#pragma once

class MOB_DROP_MANAGER : public singleton<MOB_DROP_MANAGER>
{
public:
	struct CommonDropInfo{
		uint32_t		dwItemVnum;
		int32_t			iLevelStart;
		int32_t			iLevelEnd;
		int32_t			iDropPct;

		CommonDropInfo(TCommonDropItemTable& rTable)
		{
			dwItemVnum		= rTable.dwItemVnum;
			iLevelStart		= rTable.iLevelStart;
			iLevelEnd		= rTable.iLevelEnd;
			iDropPct		= rTable.iDropPct;
		}

		bool IsRightLevel(int32_t iLevel)
		{
			return iLevel >= iLevelStart && iLevel<= iLevelEnd;
		}
	};

	typedef std::vector<CommonDropInfo>		COMMON_DROP_VEC;
	typedef std::map<uint8_t, COMMON_DROP_VEC> COMMON_DROP_MAP;

	struct DefaultDropInfo {
		uint32_t		dwItemVnum;
		int32_t			iCount;
		int32_t			iProb;

		DefaultDropInfo( TDropItemTable& table)
		{
			dwItemVnum		= table.dwItemVnum;
			iCount			= table.iCount;
			iProb			= table.iProb;
		}
	};

	typedef std::vector<DefaultDropInfo>		DEFAULT_DROP_VEC;
	typedef std::map<uint32_t,DEFAULT_DROP_VEC>	DEFAULT_DROP_MAP;

	struct MobDropKillInfo
	{
		uint32_t		dwItemVnum;
		int32_t			iCount;
		int32_t			iPartPct;

		MobDropKillInfo(TMobDropItemKill& table)
		{
			dwItemVnum		= table.dwItemVnum;
			iCount			= table.iCount;
			iPartPct		= table.iPartPct;
		}
	};
	typedef std::vector<MobDropKillInfo> MOB_DROP_KILL_INFO_VEC;

	struct MobDropKillGroupInfo
	{
		int32_t								iKillCount;
		MOB_DROP_KILL_INFO_VEC			itemVector;
		int32_t								iTotalRange;

		void CalculateTotalPct()
		{
			int32_t tot = 0;
			for (MOB_DROP_KILL_INFO_VEC::iterator it = itemVector.begin(); it != itemVector.end(); it++)
				tot += it->iPartPct;
			iTotalRange = tot;
		}

		int32_t GetTotalRange()
		{
			return iTotalRange;
		}

		MobDropKillInfo& GetOne()
		{
			int32_t extract = number(1, GetTotalRange());
			int32_t tot = 0;
			
			for (MOB_DROP_KILL_INFO_VEC::iterator it = itemVector.begin(); it != itemVector.end(); it++)
			{
				tot += it->iPartPct;
				if(tot > extract)
					return *it;
			}

			return itemVector.back();
		}

		bool IsEmpty()
		{
			return itemVector.empty();
		}
	};

	typedef std::map<uint32_t,MobDropKillGroupInfo>			MOB_DROP_GROUP_KILL_MAP_ID;
	typedef std::map<uint32_t, MOB_DROP_GROUP_KILL_MAP_ID>		MOB_DROP_GROUP_KILL_MAP_VNUM;
	typedef std::map<uint32_t,uint32_t>							MOB_DROP_GROUP_MAP_ID_TO_MAP;

	struct MobDropLevelInfo
	{
		uint32_t		dwItemVnum;
		int32_t			iCount;
		int32_t			iDropPct;

		MobDropLevelInfo( TMobDropItemLevel& table)
		{
			dwItemVnum		= table.dwItemVnum;
			iCount			= table.iCount;
			iDropPct		= table.iDropPct;
		}
	};

	typedef std::vector<MobDropLevelInfo> MOB_DROP_LEVEL_INFO_VEC;

	struct MobDropLevelGroupInfo
	{
		int32_t								iLevelStart;
		int32_t								iLevelEnd;
		MOB_DROP_LEVEL_INFO_VEC			itemVector;

	};

	typedef std::map<uint32_t,MobDropLevelGroupInfo>	MOB_DROP_LEVEL_ID_MAP;

	typedef std::map<uint32_t, MOB_DROP_LEVEL_ID_MAP>	MOB_DROP_GROUP_LEVEL_MAP_VNUM;
	typedef std::map<uint32_t,uint32_t>					MOB_DROP_GROUP_LEVEL_ID_TO_VNUM;

public:
	MOB_DROP_MANAGER();
	~MOB_DROP_MANAGER();


	void Initialize();
	void Destroy();



	bool RegisterDropInfo(TPacketDGDropTables* pPack, const char * pData);
	void ClearDropInfo();

	void MakeDropItems(LPCHARACTER pkChar , LPCHARACTER pkKiller , std::vector<LPITEM>& items);


private:
	COMMON_DROP_MAP						m_commonDropMap;
	DEFAULT_DROP_MAP					m_defaultDropMap;

	MOB_DROP_GROUP_KILL_MAP_VNUM		m_dropGroupKillMap;
	MOB_DROP_GROUP_MAP_ID_TO_MAP		m_dropGroupKillIDToVnum;


	MOB_DROP_GROUP_LEVEL_MAP_VNUM		m_dropGroupLevelMap;
	MOB_DROP_GROUP_LEVEL_ID_TO_VNUM		m_dropGroupLevelIDToVnum;

private:

};
