#pragma once
#include "StdAfx.h"
#include "PythonCharacterManager.h"
#include "PythonBackground.h"
#include "PythonPlayer.h"
#include "PythonGuild.h"

namespace Discord
{
	const auto DiscordClientID = "713021816180047892";

	using DCDATA = std::pair<std::string, std::string>;

	/*NAME*/
	DCDATA GetNameData()
	{
		/*Map Name*/
		auto WarpName = std::string(CPythonBackground::Instance().GetWarpMapName());

		//atlasinfo.txt
		static const std::map<std::string, std::string> DCmapname{
			{"1/map", "Zone Yongan"},
			{"2/map", "Vallée de Seungryong"},
			{"3/map", "Zone Jayan"},
			{"4/map", "Jungrang"},
			{"5/map", "Hasung Dong"},
			{"6/map", "Miryang"},
			{"21/map", "Zone Joan"},
			{"22/map", "Vallée d'Imji"},
			{"23/map", "Zone Bokjung"},
			{"24/map", "Waryong"},
			{"25/map", "Hasung Dong"},
			{"26/map", "Songpa"},
			{"41/map", "Zone Pyungmoo"},
			{"42/map", "Vallée de Bangsan"},
			{"43/map", "Zone Bakra"},
			{"44/map", "Imha"},
			{"45/map", "Hasung Dong"},
			{"46/map", "Daeyami"},
			{"61/map", "Mont Sohan"},
			{"62/map", "Terre de Feu"},
			{"63/map", "Désert de Yongbi"},
			{"65/map", "Temple de Hwang"},
			{"66/map", "Tour des Démons"},
			{"67/map", "Bois Enchanté"},
			{"68/map", "Bois Rouge"},
			{"69/map", "Grande Vallée"},
			{"70/map", "Terre des Ogres"},
			{"71/map", "Kuahlo Dong 1"},
			{"72/map", "Kuahlo Dong 2"},
			{"73/map", "Grotte de l'Exil"},
			{"74/map", "Grotte de l'Exil 2"},
			{"75/map", "Temple du Dragon"},
			{"76/map", "Catacombes du Diable"},
			{"77/map", "Kuahlo Dong 3"},
			{"81/map", "Zone de Cérémonie"},
			{"91/map", "Bataille des Empires : Château"},
			{"92/map", "Metin2 Project"},
			{"103/map", "Terrain de Guerre de Guildes"},
			{"105/map", "Terrain de Guerre de Guildes"},
			{"108/map", "Jungsun Dong"},
			{"109/map", "Sangsun Dong"},
			{"110/map", "Terrain de Guerre de Guildes"},
			{"111/map", "Terrain de Guerre de Guildes"},
			{"112/map", "Arène d'Entraînement"},
			{"113/map", "Evénement OX Contest"},
			{"114/map", "Bataille des Empires"},
			{"118/map", "Bataille des Empires : Terre de Feu"},
			{"119/map", "Bataille des Empires : Terre de Feu"},
			{"120/map", "Bataille des Empires : Terre de Feu"},
			{"121/map", "Bataille des Empires : Terre Glaciaire"},
			{"122/map", "Bataille des Empires : Terre Glaciaire"},
			{"123/map", "Bataille des Empires : Terre Glaciaire"},
			{"124/map", "Bataille des Empires : Terre Glaciaire"},
			{"125/map", "Bataille des Empires : Terre du Désert"},
			{"126/map", "Bataille des Empires : Terre du Désert"},
			{"127/map", "Bataille des Empires : Terre du Désert"},
			{"128/map", "Bataille des Empires : Terre du Désert"},
			{"140/map", "Baie de Néphrite"},
			{"141/map", "Cap du Feu Dragonesque"},
			{"142/map", "Falaise de Gautama"},
			{"143/map", "Montagnes Fulgurantes"},
			{"181/map", "Bataille pour le Château"},
			{"182/map", "Bataille pour le Château"},
			{"183/map", "Bataille pour le Château"},
			{"251/map", "Forteresse du Dragon Rouge"},
			{"252/map", "Observatoire de Nemere"},
		};

		auto MapName = "Map : " + (DCmapname.count(WarpName) ? DCmapname.at(WarpName) : WarpName);

		/*CH Name*/
		auto CHName = "Name : " + std::string(CPythonPlayer::Instance().GetName());
		std::string GuildName;
		if (CPythonGuild::Instance().GetGuildName(CPythonPlayer::Instance().GetGuildID(), &GuildName))
			CHName += " | Guild : " + GuildName;

		return { MapName, CHName };
	}

	/*RACE*/
	DCDATA GetRaceData()
	{
		auto pInstance = CPythonCharacterManager::Instance().GetMainInstancePtr();
		if (!pInstance)
			return { "","" };

		auto RACENUM = pInstance->GetRace();

		/*Image*/
		auto RaceImage = "race_" + std::to_string(RACENUM);

		/*Name*/
		auto RaceName = "Warrior";
		switch (RACENUM)
		{
		case NRaceData::JOB_ASSASSIN:
		case NRaceData::JOB_ASSASSIN + 4:
			RaceName = "Assassin";
			break;
		case NRaceData::JOB_SURA:
		case NRaceData::JOB_SURA + 4:
			RaceName = "Sura";
			break;
		case NRaceData::JOB_SHAMAN:
		case NRaceData::JOB_SHAMAN + 4:
			RaceName = "Shaman";
			break;
#if defined(ENABLE_WOLFMAN_CHARACTER)
		case NRaceData::JOB_WOLFMAN:
			RaceName = "Lycan";
#endif
		}
		return { RaceImage , RaceName };
	}

	/*EMPIRE*/
	DCDATA GetEmpireData()
	{
		auto pInstance = CPythonCharacterManager::Instance().GetMainInstancePtr();
		if (!pInstance)
			return { "","" };

		auto EmpireID = pInstance->GetEmpireID();

		/*Image*/
		auto EmpireImage = "empire_" + std::to_string(EmpireID);

		/*Name*/
		auto EmpireName = "Shinsoo";
		switch (EmpireID)
		{
		case 2:
			EmpireName = "Chunjo";
			break;
		case 3:
			EmpireName = "Jinno";
		}
		return { EmpireImage, EmpireName };
	}
}