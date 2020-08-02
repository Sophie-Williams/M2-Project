#include "stdafx.h"
#include "../../common/tables.h"
#include "char.h"
#include "item.h"
#include "item_manager.h"
#include "mob_drop_manager.h"

MOB_DROP_MANAGER::MOB_DROP_MANAGER()
{
	Initialize();
}

MOB_DROP_MANAGER::~MOB_DROP_MANAGER()
{
	Destroy();
}

void MOB_DROP_MANAGER::Initialize(){}
void MOB_DROP_MANAGER::Destroy(){}

bool MOB_DROP_MANAGER::RegisterDropInfo(TPacketDGDropTables * pPack, const char * pData)
{
	ClearDropInfo();

	if (pPack->dwCommonDropTableSize != sizeof(TCommonDropItemTable))
	{
		sys_err("WRONG TABLE SIZE TCommonDropItemTable : %d insteaf %d .. try to compile db and game cleaned " , pPack->dwCommonDropTableSize , sizeof(TCommonDropItemTable));
		return false;
	}

	if (pPack->dwDropItemTableSize != sizeof(TDropItemTable))
	{
		sys_err("WRONG TABLE SIZE TDropItemTable : %d insteaf %d .. try to compile db and game cleaned " , pPack->dwDropItemTableSize , sizeof(TDropItemTable));
		return false;
	}

	if (pPack->dwMobDropItemKillGroupTableSize != sizeof(TMobDropItemGroupKill))
	{
		sys_err("WRONG TABLE SIZE TMobDropItemGroupKill : %d insteaf %d .. try to compile db and game cleaned " , pPack->dwMobDropItemKillGroupTableSize , sizeof(TMobDropItemGroupKill));
		return false;
	}

	if (pPack->dwMobDropItemKillTableSize != sizeof(TMobDropItemKill))
	{
		sys_err("WRONG TABLE SIZE TMobDropItemKill : %d insteaf %d .. try to compile db and game cleaned " , pPack->dwMobDropItemKillTableSize , sizeof(TMobDropItemKill));
		return false;
	}

	if (pPack->dwMobDropItemLevelGroupTableSize != sizeof(TMobDropItemGroupLevel))
	{
		sys_err("WRONG TABLE SIZE TMobDropItemGroupLevel : %d insteaf %d .. try to compile db and game cleaned " , pPack->dwMobDropItemLevelGroupTableSize , sizeof(TMobDropItemGroupLevel));
		return false;
	}

	if (pPack->dwMobDropItemLevelTableSize != sizeof(TMobDropItemLevel))
	{
		sys_err("WRONG TABLE SIZE TMobDropItemLevel : %d insteaf %d .. try to compile db and game cleaned " , pPack->dwMobDropItemLevelTableSize , sizeof(TMobDropItemLevel));
		return false;
	}

	for (uint32_t i = 0; i < pPack->dwCommonDropCount; i++)
	{
		TCommonDropItemTable* pTable = (TCommonDropItemTable*)pData;
		pData += sizeof(TCommonDropItemTable);


		COMMON_DROP_MAP::iterator it = m_commonDropMap.find(pTable->bRank);

		if (it == m_commonDropMap.end())
			it = m_commonDropMap.insert(std::make_pair(pTable->bRank , COMMON_DROP_VEC() )).first;

		COMMON_DROP_VEC& rVec = it->second;
		CommonDropInfo info(*pTable);
		rVec.push_back(info);
	}

	for (uint32_t i = 0; i < pPack->dwDropItemCount; i++)
	{
		TDropItemTable* pTable = (TDropItemTable*)pData;
		pData += sizeof(TDropItemTable);


		DEFAULT_DROP_MAP::iterator it = m_defaultDropMap.find(pTable->dwMobVnum);

		if (it == m_defaultDropMap.end())
			it = m_defaultDropMap.insert(std::make_pair(pTable->dwMobVnum , DEFAULT_DROP_VEC() )).first;

		DEFAULT_DROP_VEC& rVec = it->second;
		DefaultDropInfo info(*pTable);
		rVec.push_back(info);
	}

	for (uint32_t i = 0; i < pPack->dwMobDropItemKillGroupCount; i++)
	{
		TMobDropItemGroupKill* pTable = (TMobDropItemGroupKill*) pData;
		pData += sizeof(TMobDropItemGroupKill);

		MOB_DROP_GROUP_KILL_MAP_VNUM::iterator it = m_dropGroupKillMap.find(pTable->dwMobVnum);
		
		if(it == m_dropGroupKillMap.end())
			it = m_dropGroupKillMap.insert(std::make_pair(pTable->dwMobVnum , MOB_DROP_GROUP_KILL_MAP_ID())).first;

		MOB_DROP_GROUP_KILL_MAP_ID& rMapID			= it->second;
		MOB_DROP_GROUP_KILL_MAP_ID::iterator itID	= rMapID.find(pTable->dwGroupID);

		if(itID == rMapID.end())
			itID = rMapID.insert(std::make_pair(pTable->dwGroupID , MobDropKillGroupInfo())).first;

		MobDropKillGroupInfo& groupInfo = itID->second;
		groupInfo.iKillCount = pTable->iKill;

		MOB_DROP_GROUP_MAP_ID_TO_MAP::iterator itGroup = m_dropGroupKillIDToVnum.find(pTable->dwGroupID);
		if (itGroup == m_dropGroupKillIDToVnum.end())
			itGroup = m_dropGroupKillIDToVnum.insert(std::make_pair(pTable->dwGroupID, pTable->dwMobVnum)).first;
	}

	for (uint32_t i = 0; i < pPack->dwMobDropItemKillCount; i++)
	{
		TMobDropItemKill* pTable = (TMobDropItemKill*) pData;
		pData += sizeof(TMobDropItemKill);

		MOB_DROP_GROUP_MAP_ID_TO_MAP::iterator it = m_dropGroupKillIDToVnum.find(pTable->dwGroupID);
		if (it == m_dropGroupKillIDToVnum.end())
		{
			sys_err("MOB DROP MANAGER :: cannot find group by id %d when register drop info (kill) to add item vnum [%d] ",pTable->dwGroupID, pTable->dwItemVnum);
			continue;
		}

		uint32_t dwMobVnum = it->second;
		MOB_DROP_GROUP_KILL_MAP_VNUM::iterator iterVnum = m_dropGroupKillMap.find(dwMobVnum);

		if (iterVnum == m_dropGroupKillMap.end())
		{
			sys_err("MOB DROP MANAGER :: cannot find mob vnum %d when register drop info (kill) to add item vnum [%d] ",dwMobVnum, pTable->dwItemVnum);
			continue;
		}

		MOB_DROP_GROUP_KILL_MAP_ID&				rMapID	= iterVnum->second;
		MOB_DROP_GROUP_KILL_MAP_ID::iterator	itID	= rMapID.find(pTable->dwGroupID);

		if (itID == rMapID.end())
		{
			sys_err("MOB DROP MANAGER :: cannot find group id %d when register drop info (kill) to add item vnum [%d] in rMapID ",pTable->dwGroupID, pTable->dwItemVnum);
			continue;
		}

		MobDropKillGroupInfo& rInfo	= itID->second;
		MobDropKillInfo killInfo(*pTable);
		rInfo.itemVector.push_back(killInfo);
		rInfo.CalculateTotalPct();
	}

	for (uint32_t i = 0; i < pPack->dwMobDropItemLevelGroupCount; i++)
	{
		TMobDropItemGroupLevel* pTable = (TMobDropItemGroupLevel*) pData;
		pData += sizeof(TMobDropItemGroupLevel);

		MOB_DROP_GROUP_LEVEL_MAP_VNUM::iterator it = m_dropGroupLevelMap.find(pTable->dwMobVnum);

		if(it == m_dropGroupLevelMap.end())
			it = m_dropGroupLevelMap.insert(std::make_pair(pTable->dwMobVnum , MOB_DROP_LEVEL_ID_MAP())).first;

		MOB_DROP_LEVEL_ID_MAP& rMapID			= it->second;
		MOB_DROP_LEVEL_ID_MAP::iterator itID	= rMapID.find(pTable->dwGroupID);

		if(itID == rMapID.end())
			itID = rMapID.insert(std::make_pair(pTable->dwGroupID , MobDropLevelGroupInfo())).first;

		MobDropLevelGroupInfo& groupInfo	= itID->second;
		groupInfo.iLevelStart				= pTable->iLevelStart;
		groupInfo.iLevelEnd					= pTable->iLevelEnd;

		MOB_DROP_GROUP_LEVEL_ID_TO_VNUM::iterator itGroup = m_dropGroupLevelIDToVnum.find(pTable->dwGroupID);
		if(itGroup == m_dropGroupLevelIDToVnum.end())
			itGroup = m_dropGroupLevelIDToVnum.insert(std::make_pair(pTable->dwGroupID , pTable->dwMobVnum)).first;

	}

	for (uint32_t i = 0; i < pPack->dwMobDropItemLevelCount; i++)
	{
		TMobDropItemLevel* pTable = (TMobDropItemLevel*) pData;
		pData += sizeof(TMobDropItemLevel);

		MOB_DROP_GROUP_LEVEL_ID_TO_VNUM::iterator it = m_dropGroupLevelIDToVnum.find(pTable->dwGroupID);
		if (it == m_dropGroupLevelIDToVnum.end())
		{
			sys_err("MOB DROP MANAGER :: cannot find group by id %d when register drop info (level) to add item vnum [%d] ",pTable->dwGroupID, pTable->dwItemVnum);
			continue;
		}


		uint32_t dwMobVnum = it->second;
		MOB_DROP_GROUP_LEVEL_MAP_VNUM::iterator iterVnum = m_dropGroupLevelMap.find(dwMobVnum);

		if (iterVnum == m_dropGroupLevelMap.end())
		{
			sys_err("MOB DROP MANAGER :: cannot find mob vnum %d when register drop info (level) to add item vnum [%d] ",dwMobVnum, pTable->dwItemVnum);
			continue;
		}

		MOB_DROP_LEVEL_ID_MAP&			rMapID	= iterVnum->second;
		MOB_DROP_LEVEL_ID_MAP::iterator	itID	= rMapID.find(pTable->dwGroupID);

		if (itID == rMapID.end())
		{
			sys_err("MOB DROP MANAGER :: cannot find group id %d when register drop info (level) to add item vnum [%d] in rMapID ",pTable->dwGroupID, pTable->dwItemVnum);
			continue;
		}

		MobDropLevelGroupInfo& rInfo	= itID->second;
		MobDropLevelInfo killInfo(*pTable);
		rInfo.itemVector.push_back(killInfo);
	}


	return true;
}

void MOB_DROP_MANAGER::ClearDropInfo()
{
	m_commonDropMap.clear();
	m_defaultDropMap.clear();

	m_dropGroupKillMap.clear();
	m_dropGroupKillIDToVnum.clear();


	m_dropGroupLevelMap.clear();
	m_dropGroupLevelIDToVnum.clear();
}

void MOB_DROP_MANAGER::MakeDropItems(LPCHARACTER pkChar, LPCHARACTER pkKiller, std::vector<LPITEM>& items)
{
	if(!pkChar || !pkKiller)
		return;

	LPITEM item					= NULL;
	ITEM_MANAGER& rItemManager	= ITEM_MANAGER::instance();
	uint32_t dwMobVnum				= pkChar->GetRaceNum();

	int32_t iDeltaPercent=0, iRandRange=0;

	if (pkChar->IsPC() || !rItemManager.GetDropPct(pkChar, pkKiller, iDeltaPercent, iRandRange))
		return;

	{
		uint8_t bRank = pkChar->GetMobRank();
		COMMON_DROP_MAP::iterator it = m_commonDropMap.find(bRank);
		
		if (it != m_commonDropMap.end())
		{
			COMMON_DROP_VEC& rVec = it->second;
			COMMON_DROP_VEC::iterator itVec = rVec.begin();

			for ( ; itVec != rVec.end() ; itVec++)
			{
				CommonDropInfo& rDropInfo = *itVec;
				
				if (rDropInfo.iLevelStart > pkKiller->GetLevel())
					continue;

				if (rDropInfo.iLevelEnd < pkKiller->GetLevel())
					continue;

				int64_t llPct = 0;
				llPct += (int64_t) rDropInfo.iDropPct * (int64_t) iDeltaPercent;
				llPct /= 100LL;

				if (llPct > (int64_t) number(1, iRandRange))
				{
					TItemTable * table = rItemManager.GetTable(rDropInfo.dwItemVnum);

					if (!table)
						continue;

					item = NULL;
					item = rItemManager.CreateItem(rDropInfo.dwItemVnum, 1, 0, true);

					if (item)
					{
						if (table->bType == ITEM_POLYMORPH && rDropInfo.dwItemVnum == pkChar->GetPolymorphItemVnum())
							item->SetSocket(0, pkChar->GetRaceNum());

						items.push_back(item);
					}
				}
			}
		}
	}

	{
		DEFAULT_DROP_MAP::iterator it = m_defaultDropMap.find(dwMobVnum);

		if (it != m_defaultDropMap.end())
		{
			DEFAULT_DROP_VEC& rVec = it->second;
			DEFAULT_DROP_VEC::iterator itVec = rVec.begin();

			for (; itVec != rVec.end(); itVec++)
			{
				DefaultDropInfo& rDropInfo = *itVec;

				int64_t llPtc = 0;
				llPtc += (int64_t) rDropInfo.iProb;
				llPtc *= (int64_t) iDeltaPercent;
				llPtc /= 100LL;

				if (llPtc > (int64_t)number(1, iRandRange))
				{
					item = NULL;
					item = rItemManager.CreateItem(rDropInfo.dwItemVnum, rDropInfo.iCount, 0, true);

					if (item->GetType() == ITEM_POLYMORPH && item->GetVnum() == pkChar->GetPolymorphItemVnum())
						item->SetSocket(0, dwMobVnum);

					items.push_back(item);
				}
			}
		}
	}

	{
		MOB_DROP_GROUP_KILL_MAP_VNUM::iterator it = m_dropGroupKillMap.find(dwMobVnum);

		if (it != m_dropGroupKillMap.end())
		{
			MOB_DROP_GROUP_KILL_MAP_ID& rGroupMap = it->second;
			MOB_DROP_GROUP_KILL_MAP_ID::iterator itGroup = rGroupMap.begin();

			for (; itGroup != rGroupMap.end(); itGroup++)
			{
				MobDropKillGroupInfo& rGroupInfo = itGroup->second;

				if(rGroupInfo.IsEmpty())
					continue;

				int64_t llPtc = 40000LL;
				llPtc *= (int64_t) iDeltaPercent;
				llPtc /= (int64_t) rGroupInfo.iKillCount;

				if (llPtc >= (int64_t)number(1, iRandRange))
				{
					MobDropKillInfo& rDropInfo = rGroupInfo.GetOne();
					item = NULL;
					item = rItemManager.CreateItem(rDropInfo.dwItemVnum, rDropInfo.iCount, 0, true);

					if (item)
					{
						if (item->GetType() == ITEM_POLYMORPH && item->GetVnum() == pkChar->GetPolymorphItemVnum())
							item->SetSocket(0, dwMobVnum);

						items.push_back(item);
					}
				}
			}
		}
	}

	{
		MOB_DROP_GROUP_LEVEL_MAP_VNUM::iterator it = m_dropGroupLevelMap.find(dwMobVnum);

		if (it != m_dropGroupLevelMap.end())
		{
			MOB_DROP_LEVEL_ID_MAP&			rMapID	= it->second;
			MOB_DROP_LEVEL_ID_MAP::iterator	itID	= rMapID.begin();

			for (; itID!=rMapID.end(); itID++)
			{
				MobDropLevelGroupInfo& rGroupInfo = itID->second;
				if(pkKiller->GetLevel() < rGroupInfo.iLevelStart)
					continue;

				if(pkKiller->GetLevel() > rGroupInfo.iLevelEnd)
					continue;

				MOB_DROP_LEVEL_INFO_VEC& rDropVec = rGroupInfo.itemVector;
				MOB_DROP_LEVEL_INFO_VEC::iterator itDrop = rDropVec.begin();

				for(; itDrop!=rDropVec.end();itDrop++)
				{
					MobDropLevelInfo& rDropInfo = *itDrop;

					if ( rDropInfo.iDropPct >= number(1, 1000000) )
					{
						item = NULL;
						item = rItemManager.CreateItem(rDropInfo.dwItemVnum,rDropInfo.iCount, 0, true);
						if (item)
						{
							if (item->GetType() == ITEM_POLYMORPH && item->GetVnum() == pkChar->GetPolymorphItemVnum())
								item->SetSocket(0, dwMobVnum);

							items.push_back(item);
						}
					}
				}
			}
		}
	}
}
