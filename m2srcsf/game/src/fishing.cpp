
#include "stdafx.h"
#include "constants.h"
#include "fishing.h"
#include "locale_service.h"
#include "db.h"
#include "log.h"

#ifndef __FISHING_MAIN__
#include "item_manager.h"

#include "config.h"
#include "packet.h"

#include "sectree_manager.h"
#include "char.h"
#include "char_manager.h"

#include "log.h"

#include "questmanager.h"
#include "buffer_manager.h"
#include "desc_client.h"
#include "locale_service.h"

#include "affect.h"
#include "unique_item.h"
#endif

namespace fishing
{
	enum
	{
		MAX_FISH = 37,
		NUM_USE_RESULT_COUNT = 10,
		FISH_BONE_VNUM = 27799,
		SHELLFISH_VNUM = 27987,
		EARTHWORM_VNUM = 27801,
		WATER_STONE_VNUM_BEGIN = 28030,
#ifdef __ANTI_RESIST_MAGIC_BONUS__
		WATER_STONE_VNUM_END = 28045,
#else
		WATER_STONE_VNUM_END = 28043,
#endif
		FISH_NAME_MAX_LEN = 64,
		MAX_PROB = 4,
	};

	enum
	{
		USED_NONE,
		USED_SHELLFISH,
		USED_WATER_STONE,
		USED_TREASURE_MAP,
		USED_EARTHWARM,
		MAX_USED_FISH
	};

	enum
	{
		FISHING_TIME_NORMAL,
		FISHING_TIME_SLOW,
		FISHING_TIME_QUICK,
		FISHING_TIME_ALL,
		FISHING_TIME_EASY,

		FISHING_TIME_COUNT,

		MAX_FISHING_TIME_COUNT = 31,
	};

	enum
	{
		FISHING_LIMIT_NONE,
		FISHING_LIMIT_APPEAR,
	};

	int32_t aFishingTime[FISHING_TIME_COUNT][MAX_FISHING_TIME_COUNT] =
	{
		{   0,   0,   0,   0,   0,   2,   4,   8,  12,  16,  20,  22,  25,  30,  50,  80,  50,  30,  25,  22,  20,  16,  12,   8,   4,   2,   0,   0,   0,   0,   0 },
		{   0,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   4,   8,  12,  16,  20,  22,  25,  30,  50,  80,  50,  30,  25,  22,  20 },
		{  20,  22,  25,  30,  50,  80,  50,  30,  25,  22,  20,  16,  12,   8,   4,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0 },
		{ 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100 },
		{  20,  20,  20,  20,  20,  22,  24,  28,  32,  36,  40,  42,  45,  50,  70, 100,  70,  50,  45,  42,  40,  36,  32,  28,  24,  22,  20,  20,  20,  20,  20 },
	};

	struct SFishInfo
	{
		char name[FISH_NAME_MAX_LEN];

		uint32_t vnum;
		uint32_t dead_vnum;
		uint32_t grill_vnum;

		int32_t prob[MAX_PROB];
		int32_t difficulty;

		int32_t int32_type;
		int32_t length_range[3];

		int32_t used_table[NUM_USE_RESULT_COUNT];
		
	};

	bool operator < ( const SFishInfo& lhs, const SFishInfo& rhs )
	{
		return lhs.vnum < rhs.vnum;
	}

	int32_t g_prob_sum[MAX_PROB];
	int32_t g_prob_accumulate[MAX_PROB][MAX_FISH];

	SFishInfo fish_info[MAX_FISH] = { { "\0", }, };
	
void Initialize()
{
	sys_log(0, "Initialize::Fishing");
			
	SFishInfo fish_info_bak[MAX_FISH];
	thecore_memcpy(fish_info_bak, fish_info, sizeof(fish_info));

	memset(fish_info, 0, sizeof(fish_info));

	const int32_t FILE_NAME_LEN = 256;
	char szFishingFileName[FILE_NAME_LEN+1];
	snprintf(szFishingFileName, sizeof(szFishingFileName),
			"%s/fishing.txt", LocaleService_GetBasePath().c_str());
	FILE * fp = fopen(szFishingFileName, "r");

	if (*fish_info_bak[0].name)
		SendLog("Reloading fish table.");

	if (!fp)
	{
		SendLog("error! cannot open fishing.txt");

		if (*fish_info_bak[0].name)
		{
			thecore_memcpy(fish_info, fish_info_bak, sizeof(fish_info));
			SendLog("  restoring to backup");
		}
		return;
	}

	memset(fish_info, 0, sizeof(fish_info));

	char buf[512];
	int32_t idx = 0;

	while (fgets(buf, 512, fp))
	{
		if (*buf == '#')
			continue;

		char * p = strrchr(buf, '\n');
		*p = '\0';

		const char * start = buf;
		const char * tab = strchr(start, '\t');

		if (!tab)
		{
			printf("Tab error on line: %s\n", buf);
			SendLog("error! parsing fishing.txt");

			if (*fish_info_bak[0].name)
			{
				thecore_memcpy(fish_info, fish_info_bak, sizeof(fish_info));
				SendLog("  restoring to backup");
			}
			break;
		}

		char szCol[256], szCol2[256];
		int32_t iColCount = 0;

		do
		{
			strlcpy(szCol2, start, MIN(sizeof(szCol2), (tab - start) + 1));
			szCol2[tab-start] = '\0';

			trim_and_lower(szCol2, szCol, sizeof(szCol));

			if (!*szCol || *szCol == '\t')
				iColCount++;
			else 
			{
				switch (iColCount++)
				{
					case 0: strlcpy(fish_info[idx].name, szCol, sizeof(fish_info[idx].name)); break;
					case 1: str_to_number(fish_info[idx].vnum, szCol); break;
					case 2: str_to_number(fish_info[idx].dead_vnum, szCol); break;
					case 3: str_to_number(fish_info[idx].grill_vnum, szCol); break;
					case 4: str_to_number(fish_info[idx].prob[0], szCol); break;
					case 5: str_to_number(fish_info[idx].prob[1], szCol); break;
					case 6: str_to_number(fish_info[idx].prob[2], szCol); break;
					case 7: str_to_number(fish_info[idx].prob[3], szCol); break;
					case 8: str_to_number(fish_info[idx].difficulty, szCol); break;
					case 9: str_to_number(fish_info[idx].int32_type, szCol); break;
					case 10: str_to_number(fish_info[idx].length_range[0], szCol); break;
					case 11: str_to_number(fish_info[idx].length_range[1], szCol); break;
					case 12: str_to_number(fish_info[idx].length_range[2], szCol); break;
					case 13: 
					case 14: 
					case 15: 
					case 16: 
					case 17: 
					case 18: 
					case 19: 
					case 20: 
					case 21: 
					case 22: 
							 str_to_number(fish_info[idx].used_table[iColCount-1-12], szCol);
							 break;
				}
			}

			start = tab + 1;
			tab = strchr(start, '\t');
		} while (tab);

		idx++;

		if (idx == MAX_FISH)
			break;
	}

	fclose(fp);

	for (int32_t i = 0; i < MAX_FISH; ++i)
	{
		
	if (!g_bAuthServer)
	{
		sys_log(0, "FISH: %-24s vnum %5lu prob %4d %4d %4d %4d len %d %d %d", 
				fish_info[i].name,
				fish_info[i].vnum,
				fish_info[i].prob[0],
				fish_info[i].prob[1],
				fish_info[i].prob[2],
				fish_info[i].prob[3],
				fish_info[i].length_range[0],
				fish_info[i].length_range[1],
				fish_info[i].length_range[2]);
		}
	}

	for (int32_t j = 0; j < MAX_PROB; ++j)
	{
		g_prob_accumulate[j][0] = fish_info[0].prob[j];

		for (int32_t i = 1; i < MAX_FISH; ++i)
			g_prob_accumulate[j][i] = fish_info[i].prob[j] + g_prob_accumulate[j][i - 1];

		g_prob_sum[j] = g_prob_accumulate[j][MAX_FISH - 1];
		
		if (!g_bAuthServer)
		{
			sys_log(0, "FISH: prob table %d %d", j, g_prob_sum[j]);
		}	
	
	}
}

int32_t DetermineFishByProbIndex(int32_t prob_idx)
{
	int32_t rv = number(1, g_prob_sum[prob_idx]);
	int32_t * p = std::lower_bound(g_prob_accumulate[prob_idx], g_prob_accumulate[prob_idx]+ MAX_FISH, rv);
	int32_t fish_idx = p - g_prob_accumulate[prob_idx];
	return fish_idx;
}

int32_t GetProbIndexByMapIndex(int32_t index)
{
	if (index > 60)
		return -1;

	switch (index)
	{
		case 1:
		case 21:
		case 41:
			return 0;

		case 3:
		case 23:
		case 43:
			return 1;
	}

	return -1;
}

#ifndef __FISHING_MAIN__
int32_t DetermineFish(LPCHARACTER ch)
{
	int32_t map_idx = ch->GetMapIndex();
	int32_t prob_idx = GetProbIndexByMapIndex(map_idx);

	if (prob_idx < 0) 
		return 0;

	if (ch->GetPremiumRemainSeconds(PREMIUM_FISH_MIND) > 0 ||
			ch->IsEquipUniqueGroup(UNIQUE_GROUP_FISH_MIND))
	{
		if (quest::CQuestManager::instance().GetEventFlag("manwoo") != 0)
			prob_idx = 3;
		else
			prob_idx = 2;
	}

	int32_t adjust = 0;
	if (quest::CQuestManager::instance().GetEventFlag("fish_miss_pct") != 0)
	{
		int32_t fish_pct_value = MINMAX(0, quest::CQuestManager::instance().GetEventFlag("fish_miss_pct"), 200);
		adjust = (100-fish_pct_value) * fish_info[0].prob[prob_idx] / 100;
	}

	int32_t rv = number(adjust + 1, g_prob_sum[prob_idx]);

	int32_t * p = std::lower_bound(g_prob_accumulate[prob_idx], g_prob_accumulate[prob_idx] + MAX_FISH, rv);
	int32_t fish_idx = p - g_prob_accumulate[prob_idx];

	if ( LC_IsYMIR() )
	{
		if (fish_info[fish_idx].vnum >= 70040 && fish_info[fish_idx].vnum <= 70052)
			return 0;
	}

	if (g_iUseLocale)
	{
		uint32_t vnum = fish_info[fish_idx].vnum;

		if (vnum == 50008 || vnum == 50009 || vnum == 80008) 
			return 0;
	}

	return (fish_idx);
}

void FishingReact(LPCHARACTER ch)
{
	TPacketGCFishing p;
	p.header = HEADER_GC_FISHING;
	p.subheader = FISHING_SUBHEADER_GC_REACT;
	p.info = ch->GetVID();
	ch->PacketAround(&p, sizeof(p));
}

void FishingSuccess(LPCHARACTER ch)
{
	quest::CQuestManager::instance().FishingSuccess(ch->GetPlayerID());
	TPacketGCFishing p;
	p.header = HEADER_GC_FISHING;
	p.subheader = FISHING_SUBHEADER_GC_SUCCESS;
	p.info = ch->GetVID();
	ch->PacketAround(&p, sizeof(p));
}

void FishingFail(LPCHARACTER ch)
{
	quest::CQuestManager::instance().FishingFailed(ch->GetPlayerID());
	TPacketGCFishing p;
	p.header = HEADER_GC_FISHING;
	p.subheader = FISHING_SUBHEADER_GC_FAIL;
	p.info = ch->GetVID();
	ch->PacketAround(&p, sizeof(p));
}

void FishingPractice(LPCHARACTER ch)
{
	LPITEM rod = ch->GetWear(WEAR_WEAPON);
	if (rod && rod->GetType() == ITEM_ROD)
	{

		if ( rod->GetRefinedVnum()>0 && rod->GetSocket(0) < rod->GetValue(2) && number(1,rod->GetValue(1))==1 )
		{
			rod->SetSocket(0, rod->GetSocket(0) + 1);
			ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("낚시대의 수련도가 증가하였습니다! (%d/%d)"),rod->GetSocket(0), rod->GetValue(2));
			if (rod->GetSocket(0) == rod->GetValue(2))
			{
				ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("낚시대가 최대 수련도에 도달하였습니다."));
				ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("어부를 통해 다음 레벨의 낚시대로 업그레이드 할 수 있습니다."));
			}
		}
	}

	rod->SetSocket(2, 0);
}

bool PredictFish(LPCHARACTER ch)
{
	if (ch->FindAffect(AFFECT_FISH_MIND_PILL) || 
			ch->GetPremiumRemainSeconds(PREMIUM_FISH_MIND) > 0 ||
			ch->IsEquipUniqueGroup(UNIQUE_GROUP_FISH_MIND))
		return true;

	return false;
}

EVENTFUNC(fishing_event)
{
	fishing_event_info * info = dynamic_cast<fishing_event_info *>( event->info );

	if ( info == NULL )
	{
		sys_err( "fishing_event> <Factor> Null pointer" );
		return 0;
	}

	LPCHARACTER ch = CHARACTER_MANAGER::instance().FindByPID(info->pid);

	if (!ch)
		return 0;

	LPITEM rod = ch->GetWear(WEAR_WEAPON);

	if (!(rod && rod->GetType() == ITEM_ROD))
	{
		ch->m_pkFishingEvent = NULL;
		return 0;
	}

	switch (info->step)
	{
		case 0:
			++info->step;

			
			info->hang_time = get_dword_time();
			info->fish_id = DetermineFish(ch);
			FishingReact(ch);

			if (PredictFish(ch))
			{
				TPacketGCFishing p;
				p.header	= HEADER_GC_FISHING;
				p.subheader	= FISHING_SUBHEADER_GC_FISH;
				p.info	= fish_info[info->fish_id].vnum;
				ch->GetDesc()->Packet(&p, sizeof(TPacketGCFishing));
			}
			return (PASSES_PER_SEC(6));

		default:
			++info->step;

			if (info->step > 5)
				info->step = 5;

			ch->m_pkFishingEvent = NULL;
			FishingFail(ch);
			rod->SetSocket(2, 0);
			return 0;
	}
}

LPEVENT CreateFishingEvent(LPCHARACTER ch)
{	
	fishing_event_info* info = AllocEventInfo<fishing_event_info>();
	info->pid	= ch->GetPlayerID();
	info->step	= 0;
	info->hang_time	= 0;

	int32_t time = number(10, 40);

	TPacketGCFishing p;
	p.header	= HEADER_GC_FISHING;
	p.subheader	= FISHING_SUBHEADER_GC_START;
	p.info		= ch->GetVID();
	p.dir		= (uint8_t)(ch->GetRotation()/5);
	ch->PacketAround(&p, sizeof(TPacketGCFishing));

	return event_create(fishing_event, info, PASSES_PER_SEC(time));
}

int32_t GetFishingLevel(LPCHARACTER ch)
{
	LPITEM rod = ch->GetWear(WEAR_WEAPON);

	if (!rod || rod->GetType()!= ITEM_ROD)
		return 0;

	return rod->GetSocket(2) + rod->GetValue(0);
}

int32_t Compute(uint32_t fish_id, uint32_t ms, uint32_t* item, int32_t level)
{
	if (fish_id == 0)
		return -2;

	if (fish_id >= MAX_FISH)
	{
		sys_err("Wrong FISH ID : %d", fish_id);
		return -2; 
	}

	if (ms > 6000)
		return -1;

	int32_t time_step = MINMAX(0,((ms + 99) / 200), MAX_FISHING_TIME_COUNT - 1);

	if (number(1, 100) <= aFishingTime[fish_info[fish_id].int32_type][time_step])
	{
		if (number(1, fish_info[fish_id].difficulty) <= level)
		{
			*item = fish_info[fish_id].vnum;
			return 0;
		}
		return -3;
	}

	return -1;
}

int32_t GetFishLength(int32_t fish_id)
{
	if (number(0,99))
	{
		return (int32_t)(fish_info[fish_id].length_range[0] + 
				(fish_info[fish_id].length_range[1] - fish_info[fish_id].length_range[0])
				* (number(0,2000)+number(0,2000)+number(0,2000)+number(0,2000)+number(0,2000))/10000);
	}
	else
	{
		return (int32_t)(fish_info[fish_id].length_range[1] + 
				(fish_info[fish_id].length_range[2] - fish_info[fish_id].length_range[1])
				* 2 * asin(number(0,10000)/10000.) / M_PI);
	}
}

void FishDrop(LPCHARACTER ch, uint32_t FishVnum)
{
	LPITEM item = ITEM_MANAGER::instance().CreateItem(FishVnum, 1);

	if (!item)
	{
		sys_err("cannot create item vnum %d", FishVnum);
		return;
	}

	PIXEL_POSITION pos;
	pos.x = ch->GetX() + number(-200, 200);
	pos.y = ch->GetY() + number(-200, 200);

	item->AddToGround(ch->GetMapIndex(), pos);
	item->StartDestroyEvent();
	item->SetOwnership(ch);

		LogManager::instance().Fish(
			ch->GetPlayerID(),
			FishVnum,
			ch->GetMapIndex(),
			pos.x,
			pos.y,
			ch->GetZ()
		);

}

void Take(fishing_event_info* info, LPCHARACTER ch)
{
	if (info->step == 1)
	{
		int32_t ms = (int32_t) ((get_dword_time() - info->hang_time));
		uint32_t item_vnum = 0;
		int32_t ret = Compute(info->fish_id, ms, &item_vnum, GetFishingLevel(ch));

		if (!ch->GetLastFishTime())
			ch->SetLastFishTime(ms);
		else {
			if (ch->GetFishHackCount() == 3) {
				ch->ResetFishHackCount();

				sys_log(0, "This player has been disconnected by M2SF HackLog [ Fishing ]...");
				ch->GetDesc()->DelayedDisconnect(3);
			}
			else {
				if ((ms == ch->GetLastFishTime()) || (abs(ch->GetLastFishTime() - ms) < 70) || (abs(ms - ch->GetLastFishTime()) < 70))
					ch->UpdateFishHackCount();
				else
					ch->ResetFishHackCount();
			}
		}

		if (test_server)
			ch->ChatPacket(CHAT_TYPE_INFO, "/HACK-TEST/ Last: %d Now: %d HackCount: %d", ch->GetLastFishTime(), ms, ch->GetFishHackCount());


		switch (ret)
		{
			case -2:
			case -3: 
			case -1:
				
				{
					
					

					LogManager::instance().Fish(
						ch->GetPlayerID(),
						0,
						ch->GetMapIndex(),
						ch->GetX(),
						ch->GetY(),
						ch->GetZ()
					);				
					
					
					
					
					int32_t map_idx = ch->GetMapIndex();
					int32_t prob_idx = GetProbIndexByMapIndex(map_idx);

					LogManager::instance().FishLog(
							ch->GetPlayerID(),
							prob_idx,
							info->fish_id,
							GetFishingLevel(ch),
							ms);
				}
				FishingFail(ch);
				break;

			case 0:
				
				if (item_vnum)
				{
					FishingSuccess(ch);

					TPacketGCFishing p;
					p.header = HEADER_GC_FISHING;
					p.subheader = FISHING_SUBHEADER_GC_FISH;
					p.info = item_vnum;
					ch->GetDesc()->Packet(&p, sizeof(TPacketGCFishing));

					
					FishDrop(ch, item_vnum);
					LPITEM item = ITEM_MANAGER::instance().CreateItem(item_vnum, 1, 0, true);
					
					if (item)
					{
						item->SetSocket(0,GetFishLength(info->fish_id));
						if (test_server)
						{
							ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("이번에 잡은 물고기의 길이는 %.2fcm"), item->GetSocket(0)/100.f);
						}

						if (quest::CQuestManager::instance().GetEventFlag("fishevent") > 0 && (info->fish_id == 5 || info->fish_id == 6))
						{

							TPacketGDHighscore p;
							p.dwPID = ch->GetPlayerID();
							p.lValue = item->GetSocket(0);

							if (info->fish_id == 5)
							{
								strlcpy(p.szBoard, LC_TEXT("낚시이벤트월척붕어"), sizeof(p.szBoard));
							}
							else if (info->fish_id == 6)
							{
								strlcpy(p.szBoard, LC_TEXT("낚시이벤트잉어"), sizeof(p.szBoard));
							}

							db_clientdesc->DBPacket(HEADER_GD_HIGHSCORE_REGISTER, 0, &p, sizeof(TPacketGDHighscore));
						}
					}

					int32_t map_idx = ch->GetMapIndex();
					int32_t prob_idx = GetProbIndexByMapIndex(map_idx);

					LogManager::instance().FishLog(
							ch->GetPlayerID(),
							prob_idx,
							info->fish_id,
							GetFishingLevel(ch),
							ms,
							true,
							item ? item->GetSocket(0) : 0);

				}
				else
				{
					

		LogManager::instance().Fish(
			ch->GetPlayerID(),
			0,
			ch->GetMapIndex(),
			ch->GetX(),
			ch->GetY(),
			ch->GetZ()
		);

					int32_t map_idx = ch->GetMapIndex();
					int32_t prob_idx = GetProbIndexByMapIndex(map_idx);

					LogManager::instance().FishLog(
							ch->GetPlayerID(),
							prob_idx,
							info->fish_id,
							GetFishingLevel(ch),
							ms);
					FishingFail(ch);
				}
				break;
		}
	}
	else if (info->step > 1)
	{
		int32_t map_idx = ch->GetMapIndex();
		int32_t prob_idx = GetProbIndexByMapIndex(map_idx);

		LogManager::instance().FishLog(
				ch->GetPlayerID(),
				prob_idx,
				info->fish_id,
				GetFishingLevel(ch),
				7000);
		
		FishingFail(ch);
	}
	else
	{
		TPacketGCFishing p;
		p.header = HEADER_GC_FISHING;
		p.subheader = FISHING_SUBHEADER_GC_STOP;
		p.info = ch->GetVID();
		ch->PacketAround(&p, sizeof(p));
	}

	if (info->step)
	{
		FishingPractice(ch);
	}
}

void Simulation(int32_t level, int32_t count, int32_t prob_idx, LPCHARACTER ch)
{
	std::map<std::string, int32_t> fished;
	int32_t total_count = 0;

	for (int32_t i = 0; i < count; ++i)
	{
		int32_t fish_id = DetermineFishByProbIndex(prob_idx);
		uint32_t item = 0;
		Compute(fish_id, (number(2000, 4000) + number(2000,4000)) / 2, &item, level);

		if (item)
		{
			fished[fish_info[fish_id].name]++;
			total_count ++;
		}
	}

	for (std::map<std::string,int32_t>::iterator it = fished.begin(); it != fished.end(); ++it)
		ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("%s : %d 마리"), it->first.c_str(), it->second);

	ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("%d 종류 %d 마리 낚음"), fished.size(), total_count);
}

void UseFish(LPCHARACTER ch, LPITEM item)
{
	int32_t idx = item->GetVnum() - fish_info[2].vnum+2;

	if (idx<=1 || idx >= MAX_FISH)
		return;

	int32_t r = number(1, 10000);

	item->SetCount(item->GetCount()-1);

	if (r >= 4001)
	{
		ch->AutoGiveItem(fish_info[idx].dead_vnum);
	}
	else if (r >= 2001)
	{
		ch->AutoGiveItem(FISH_BONE_VNUM);
	}
	else
	{
		
		static int32_t s_acc_prob[NUM_USE_RESULT_COUNT] = { 1000, 1500, 1800, 1900, 1950, 1980, 1990, 1995, 1999, 2000 };
		int32_t u_index = std::lower_bound(s_acc_prob, s_acc_prob + NUM_USE_RESULT_COUNT, r) - s_acc_prob;

		switch (fish_info[idx].used_table[u_index])
		{
			case USED_TREASURE_MAP:
			case USED_NONE:
			case USED_WATER_STONE:
				ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("고기가 흔적도 없이 사라집니다."));
				break;

			case USED_SHELLFISH:
				if ( LC_IsCanada() == true )
				{
					if ( number(0, 2) != 2 ) return;
				}

				ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("배 속에서 조개가 나왔습니다."));
				ch->AutoGiveItem(SHELLFISH_VNUM);
				break;

			case USED_EARTHWARM:
				ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("배 속에서 지렁이가 나왔습니다."));
				ch->AutoGiveItem(EARTHWORM_VNUM);
				break;

			default:
				ch->AutoGiveItem(fish_info[idx].used_table[u_index]);
				break;
		}
	}
}

void Grill(LPCHARACTER ch, LPITEM item)
{
	
	int32_t idx = -1;
	uint32_t vnum = item->GetVnum();
	if (vnum >= 27803 && vnum <= 27830)
		idx = vnum - 27800;
	if (vnum >= 27833 && vnum <= 27860)
		idx = vnum - 27830;
	if (idx == -1)
		return;

	int32_t count = item->GetCount();

	ch->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("%s를 구웠습니다."), item->GetName());
	item->SetCount(0);
	ch->AutoGiveItem(fish_info[idx].grill_vnum, count);
}

bool RefinableRod(LPITEM rod)
{
	if (rod->GetType() != ITEM_ROD)
		return false;

	if (rod->IsEquipped())
		return false;

	return (rod->GetSocket(0) == rod->GetValue(2));
}

int32_t RealRefineRod(LPCHARACTER ch, LPITEM item)
{
	if (!ch || !item)
		return 2;

	if (!RefinableRod(item))
	{
		sys_err("REFINE_ROD_HACK pid(%u) item(%s:%d)", ch->GetPlayerID(), item->GetName(), item->GetID());

		LogManager::instance().RefineLog(ch->GetPlayerID(), item->GetName(), item->GetID(), -1, 1, "ROD_HACK");

		return 2;
	}

	LPITEM rod = item;	

	int32_t iAdv = rod->GetValue(0) / 10;

	if (number(1,100) <= rod->GetValue(3))
	{
		LogManager::instance().RefineLog(ch->GetPlayerID(), rod->GetName(), rod->GetID(), iAdv, 1, "ROD");

		LPITEM pkNewItem = ITEM_MANAGER::instance().CreateItem(rod->GetRefinedVnum(), 1);

		if (pkNewItem)
		{
			uint8_t bCell = rod->GetCell();
			ITEM_MANAGER::instance().RemoveItem(rod, "REMOVE (REFINE FISH_ROD)");
			pkNewItem->AddToCharacter(ch, TItemPos (INVENTORY, bCell)); 
			LogManager::instance().ItemLog(ch, pkNewItem, "REFINE FISH_ROD SUCCESS", pkNewItem->GetName());
			return 1;
		}

		return 2;
	}
	else
	{
		LogManager::instance().RefineLog(ch->GetPlayerID(), rod->GetName(), rod->GetID(), iAdv, 0, "ROD");

		LPITEM pkNewItem = ITEM_MANAGER::instance().CreateItem(rod->GetValue(4), 1);
		if (pkNewItem)
		{
			uint8_t bCell = rod->GetCell();
			ITEM_MANAGER::instance().RemoveItem(rod, "REMOVE (REFINE FISH_ROD)");
			pkNewItem->AddToCharacter(ch, TItemPos(INVENTORY, bCell)); 
			LogManager::instance().ItemLog(ch, pkNewItem, "REFINE FISH_ROD FAIL", pkNewItem->GetName());
			return 0;
		}

		return 2;
	}
}
#endif
}

#ifdef __FISHING_MAIN__
int32_t main(int32_t argc, char **argv)
{
	
	srandomdev();
	
	using namespace fishing;

	Initialize();

	for (int32_t i = 0; i < MAX_FISH; ++i)
	{
		printf("%s\t%u\t%u\t%u\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d",
				fish_info[i].name,
				fish_info[i].vnum,
				fish_info[i].dead_vnum,
				fish_info[i].grill_vnum,
				fish_info[i].prob[0], 
				fish_info[i].prob[1], 
				fish_info[i].prob[2],
				fish_info[i].difficulty,
				fish_info[i].int32_type,
				fish_info[i].length_range[0],
				fish_info[i].length_range[1],
				fish_info[i].length_range[2]);

		for (int32_t j = 0; j < NUM_USE_RESULT_COUNT; ++j)
			printf("\t%d", fish_info[i].used_table[j]);

		puts("");
	}

	return 1;
}

#endif
