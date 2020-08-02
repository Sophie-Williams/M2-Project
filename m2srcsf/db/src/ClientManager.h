#pragma once

#include <unordered_map>
#include <unordered_set>

#include "../../common/stl.h"
#include "../../common/building.h"
#include "../../common/auction_table.h"

#include "Peer.h"
#include "DBManager.h"
#include "LoginData.h"

class CPlayerTableCache;
class CItemCache;
class CItemPriceListTableCache;


class CPacketInfo
{
    public:
	void Add(int32_t header);
	void Reset();

	std::map<int32_t, int32_t> m_map_info;
};

uint32_t CreatePlayerSaveQuery(char * pszQuery, uint32_t querySize, TPlayerTable * pkTab);

bool LC_IsEnglish();
bool LC_IsFrance();
bool LC_IsYMIR();
bool LC_IsJapan();
bool LC_IsHongKong();
bool LC_IsNewCIBN();
bool LC_IsGermany();
bool LC_IsKorea();
bool LC_IsItaly();
bool LC_IsSpain();
bool LC_IsGreek();
bool LC_IsUK();
bool LC_IsTurkey();
bool LC_IsPoland();
bool LC_IsPortugal();
bool LC_IsCanada();
bool LC_IsBrazil();
bool LC_IsRussia();
bool LC_IsDenmark();
bool LC_IsBulgaria();
bool LC_IsCroatia();
bool LC_IsMexico();
bool LC_IsArabia();
bool LC_IsCzech();
bool LC_IsRomania();
bool LC_IsHungary();
bool LC_IsNetherlands();
bool LC_IsSingapore();
bool LC_IsVietnam();
bool LC_IsThailand();
bool LC_IsUSA();
bool LC_IsWE_Korea();
bool LC_IsTaiwan();

class CClientManager : public CNetBase, public singleton<CClientManager>
{
    public:
	typedef std::list<CPeer *>			TPeerList;
	
	
	
	
	
	
	
	typedef std::unordered_map<uint32_t, CPlayerTableCache *> TPlayerTableCacheMap;
	typedef std::unordered_map<uint32_t, CItemCache *> TItemCacheMap;
	typedef std::unordered_set<CItemCache *, std::hash<CItemCache*> > TItemCacheSet;
	typedef std::unordered_map<uint32_t, TItemCacheSet *> TItemCacheSetPtrMap;
	typedef std::unordered_map<uint32_t, CItemPriceListTableCache*> TItemPriceListCacheMap;
	

#if defined(__CHANNEL_STATUS_UPDATE__)
	typedef std::unordered_map<int16_t, std::pair<uint8_t, int32_t>> TChannelStatusMap;
#else
	typedef std::unordered_map<int16_t, uint8_t> TChannelStatusMap;
#endif

	
	
	
	typedef std::pair< uint32_t, uint32_t >		TItemPricelistReqInfo;
	

	class ClientHandleInfo
	{
	    public:
		uint32_t	dwHandle;
		uint32_t	account_id;
		uint32_t	player_id;
		uint8_t	account_index;
		char	login[LOGIN_MAX_LEN + 1];
		char	safebox_password[SAFEBOX_PASSWORD_MAX_LEN + 1];
		char	ip[MAX_HOST_LENGTH + 1];

		TAccountTable * pAccountTable;
		TSafeboxTable * pSafebox;

		ClientHandleInfo(uint32_t argHandle, uint32_t dwPID = 0)
		{
		    dwHandle = argHandle;
		    pSafebox = NULL;
		    pAccountTable = NULL;
		    player_id = dwPID;
		};
		
		ClientHandleInfo(uint32_t argHandle, uint32_t dwPID, uint32_t accountId)
		{
		    dwHandle = argHandle;
		    pSafebox = NULL;
		    pAccountTable = NULL;
		    player_id = dwPID;
			account_id = accountId;
		};

		~ClientHandleInfo()
		{
		    if (pSafebox)
			{
				delete pSafebox;
				pSafebox = NULL;
			}
		}
	};

	public:
	CClientManager();
	~CClientManager();

	bool	Initialize();
	int32_t	GetCurrentTime();

	void	MainLoop();
	void	Quit();

	void	SetTablePostfix(const char* c_pszTablePostfix);
	void	SetPlayerIDStart(int32_t iIDStart);
	int32_t	GetPlayerIDStart() { return m_iPlayerIDStart; }

	int32_t	GetPlayerDeleteLevelLimit() { return m_iPlayerDeleteLevelLimit; }

	void	SetChinaEventServer(bool flag) { m_bChinaEventServer = flag; }
	bool	IsChinaEventServer() { return m_bChinaEventServer; }

	uint32_t	GetUserCount();	

	void	SendAllGuildSkillRechargePacket();
	void	SendTime();

	CPlayerTableCache *	GetPlayerCache(uint32_t id);
	void			PutPlayerCache(TPlayerTable * pNew);

	void			CreateItemCacheSet(uint32_t dwID);
	TItemCacheSet *		GetItemCacheSet(uint32_t dwID);
	void			FlushItemCacheSet(uint32_t dwID);

	CItemCache *		GetItemCache(uint32_t id);
	void			PutItemCache(TPlayerItem * pNew, bool bSkipQuery = false);
	bool			DeleteItemCache(uint32_t id);

	void			UpdatePlayerCache();
	void			UpdateItemCache();

	
	
	
	CItemPriceListTableCache*	GetItemPriceListCache(uint32_t dwID);

	
	
	void			PutItemPriceListCache(const TItemPriceListTable* pItemPriceList);


	
	void			UpdateItemPriceListCache(void);
	


	void			SendGuildSkillUsable(uint32_t guild_id, uint32_t dwSkillVnum, bool bUsable);

	void			SetCacheFlushCountLimit(int32_t iLimit);

	template <class Func>
	Func		for_each_peer(Func f);

	CPeer *		GetAnyPeer();

	void			ForwardPacket(uint8_t header, const void* data, int32_t size, uint8_t bChannel = 0, CPeer * except = NULL);

	void			SendNotice(const char * c_pszFormat, ...);

	char*			GetCommand(char* str);					
	void			ItemAward(CPeer * peer, char* login);	

    protected:
	void	Destroy();

    private:
	bool		InitializeTables();
	bool		InitializeShopTable();
#ifdef ENABLE_DROP_FROM_TABLE
	bool		InitializeItemDropTable();
#endif
	bool		InitializeMobTable();
	bool		InitializeItemTable();
	bool		InitializeQuestItemTable();
	bool		InitializeSkillTable();
	bool		InitializeRefineTable();
	bool		InitializeBanwordTable();
	bool		InitializeItemAttrTable();
	bool		InitializeItemRareTable();
	bool		InitializeLandTable();
	bool		InitializeObjectProto();
	bool		InitializeObjectTable();
	bool		InitializeMonarch();

	
	
	
	bool		MirrorMobTableIntoDB();
	bool		MirrorItemTableIntoDB();

	void		AddPeer(socket_t fd);
	void		RemovePeer(CPeer * pPeer);
	CPeer *		GetPeer(uint32_t ident);

	int32_t		AnalyzeQueryResult(SQLMsg * msg);
	int32_t		AnalyzeErrorMsg(CPeer * peer, SQLMsg * msg);

	int32_t		Process();

        void            ProcessPackets(CPeer * peer);

	CLoginData *	GetLoginData(uint32_t dwKey);
	CLoginData *	GetLoginDataByLogin(const char * c_pszLogin);
	CLoginData *	GetLoginDataByAID(uint32_t dwAID);

	void		InsertLoginData(CLoginData * pkLD);
	void		DeleteLoginData(CLoginData * pkLD);

	bool		InsertLogonAccount(const char * c_pszLogin, uint32_t dwHandle, const char * c_pszIP);
	bool		DeleteLogonAccount(const char * c_pszLogin, uint32_t dwHandle);
	bool		FindLogonAccount(const char * c_pszLogin);

	void		GuildCreate(CPeer * peer, uint32_t dwGuildID);
	void		GuildSkillUpdate(CPeer * peer, TPacketGuildSkillUpdate* p);
	void		GuildExpUpdate(CPeer * peer, TPacketGuildExpUpdate* p);
	void		GuildAddMember(CPeer * peer, TPacketGDGuildAddMember* p);
	void		GuildChangeGrade(CPeer * peer, TPacketGuild* p);
	void		GuildRemoveMember(CPeer * peer, TPacketGuild* p);
	void		GuildChangeMemberData(CPeer * peer, TPacketGuildChangeMemberData* p);
	void		GuildDisband(CPeer * peer, TPacketGuild * p);
	void		GuildWar(CPeer * peer, TPacketGuildWar * p);
	void		GuildWarScore(CPeer * peer, TPacketGuildWarScore * p);
	void		GuildChangeLadderPoint(TPacketGuildLadderPoint* p);
	void		GuildUseSkill(TPacketGuildUseSkill* p);
	void		GuildDepositMoney(TPacketGDGuildMoney* p);
	void		GuildWithdrawMoney(CPeer* peer, TPacketGDGuildMoney* p);
	void		GuildWithdrawMoneyGiveReply(TPacketGDGuildMoneyWithdrawGiveReply* p);
	void		GuildWarBet(TPacketGDGuildWarBet * p);
	void		GuildChangeMaster(TPacketChangeGuildMaster* p);

	void		SetGuildWarEndTime(uint32_t guild_id1, uint32_t guild_id2, int32_t tEndTime);

	void		QUERY_BOOT(CPeer * peer, TPacketGDBoot * p);

	void		QUERY_LOGIN(CPeer * peer, uint32_t dwHandle, SLoginPacket* data);
	void		QUERY_LOGOUT(CPeer * peer, uint32_t dwHandle, const char *);

	void		RESULT_LOGIN(CPeer * peer, SQLMsg *msg);

	void		QUERY_PLAYER_LOAD(CPeer * peer, uint32_t dwHandle, TPlayerLoadPacket*);
	void		RESULT_COMPOSITE_PLAYER(CPeer * peer, SQLMsg * pMsg, uint32_t dwQID);
	void		RESULT_PLAYER_LOAD(CPeer * peer, MYSQL_RES * pRes, ClientHandleInfo * pkInfo);
	void		RESULT_ITEM_LOAD(CPeer * peer, MYSQL_RES * pRes, uint32_t dwHandle, uint32_t dwPID);
	void		RESULT_QUEST_LOAD(CPeer * pkPeer, MYSQL_RES * pRes, uint32_t dwHandle, uint32_t dwPID);
	void		RESULT_AFFECT_LOAD(CPeer * pkPeer, MYSQL_RES * pRes, uint32_t dwHandle);

	
	void		RESULT_PLAYER_INDEX_CREATE(CPeer *pkPeer, SQLMsg *msg);
	
 
	
	
	
	void		RESULT_PRICELIST_LOAD(CPeer* peer, SQLMsg* pMsg);

	
	
	void		RESULT_PRICELIST_LOAD_FOR_UPDATE(SQLMsg* pMsg);
	

	void		QUERY_PLAYER_SAVE(CPeer * peer, uint32_t dwHandle, TPlayerTable*);

	void		__QUERY_PLAYER_CREATE(CPeer * peer, uint32_t dwHandle, TPlayerCreatePacket *);
	void		__QUERY_PLAYER_DELETE(CPeer * peer, uint32_t dwHandle, TPlayerDeletePacket *);
	void		__RESULT_PLAYER_DELETE(CPeer * peer, SQLMsg* msg);

	void		QUERY_PLAYER_COUNT(CPeer * pkPeer, TPlayerCountPacket *);

	void		QUERY_ITEM_SAVE(CPeer * pkPeer, const char * c_pData);
	void		QUERY_ITEM_DESTROY(CPeer * pkPeer, const char * c_pData);
	void		QUERY_ITEM_FLUSH(CPeer * pkPeer, const char * c_pData);


	void		QUERY_QUEST_SAVE(CPeer * pkPeer, TQuestTable *, uint32_t dwLen);
	void		QUERY_ADD_AFFECT(CPeer * pkPeer, TPacketGDAddAffect * p);
	void		QUERY_REMOVE_AFFECT(CPeer * pkPeer, TPacketGDRemoveAffect * p);

	void		QUERY_SAFEBOX_LOAD(CPeer * pkPeer, uint32_t dwHandle, TSafeboxLoadPacket *, bool bMall);
	void		QUERY_SAFEBOX_SAVE(CPeer * pkPeer, TSafeboxTable * pTable);
	void		QUERY_SAFEBOX_CHANGE_SIZE(CPeer * pkPeer, uint32_t dwHandle, TSafeboxChangeSizePacket * p);
	void		QUERY_SAFEBOX_CHANGE_PASSWORD(CPeer * pkPeer, uint32_t dwHandle, TSafeboxChangePasswordPacket * p);

	void		RESULT_SAFEBOX_LOAD(CPeer * pkPeer, SQLMsg * msg);
	void		RESULT_SAFEBOX_CHANGE_SIZE(CPeer * pkPeer, SQLMsg * msg);
	void		RESULT_SAFEBOX_CHANGE_PASSWORD(CPeer * pkPeer, SQLMsg * msg);
	void		RESULT_SAFEBOX_CHANGE_PASSWORD_SECOND(CPeer * pkPeer, SQLMsg * msg);

	void		QUERY_EMPIRE_SELECT(CPeer * pkPeer, uint32_t dwHandle, TEmpireSelectPacket * p);
	void		QUERY_SETUP(CPeer * pkPeer, uint32_t dwHandle, const char * c_pData);

	void		SendPartyOnSetup(CPeer * peer);

	void		QUERY_HIGHSCORE_REGISTER(CPeer * peer, TPacketGDHighscore* data);
	void		RESULT_HIGHSCORE_REGISTER(CPeer * pkPeer, SQLMsg * msg);

	void		QUERY_FLUSH_CACHE(CPeer * pkPeer, const char * c_pData);

	void		QUERY_PARTY_CREATE(CPeer * peer, TPacketPartyCreate* p);
	void		QUERY_PARTY_DELETE(CPeer * peer, TPacketPartyDelete* p);
	void		QUERY_PARTY_ADD(CPeer * peer, TPacketPartyAdd* p);
	void		QUERY_PARTY_REMOVE(CPeer * peer, TPacketPartyRemove* p);
	void		QUERY_PARTY_STATE_CHANGE(CPeer * peer, TPacketPartyStateChange* p);
	void		QUERY_PARTY_SET_MEMBER_LEVEL(CPeer * peer, TPacketPartySetMemberLevel* p);

	void		QUERY_RELOAD_PROTO();

	void		QUERY_CHANGE_NAME(CPeer * peer, uint32_t dwHandle, TPacketGDChangeName * p);
	void		GetPlayerFromRes(TPlayerTable * player_table, MYSQL_RES* res);

	void		QUERY_SMS(CPeer * pkPeer, TPacketGDSMS * p);
	void		QUERY_LOGIN_KEY(CPeer * pkPeer, TPacketGDLoginKey * p);

	void		AddGuildPriv(TPacketGiveGuildPriv* p);
	void		AddEmpirePriv(TPacketGiveEmpirePriv* p);
	void		AddCharacterPriv(TPacketGiveCharacterPriv* p);

	void		MoneyLog(TPacketMoneyLog* p);

	void		QUERY_AUTH_LOGIN(CPeer * pkPeer, uint32_t dwHandle, TPacketGDAuthLogin * p);

	void		QUERY_LOGIN_BY_KEY(CPeer * pkPeer, uint32_t dwHandle, TPacketGDLoginByKey * p);
	void		RESULT_LOGIN_BY_KEY(CPeer * peer, SQLMsg * msg);

	void		ChargeCash(const TRequestChargeCash * p);

	void		LoadEventFlag();
	void		SetEventFlag(TPacketSetEventFlag* p);
	void		SendEventFlagsOnSetup(CPeer* peer);

	void		BillingExpire(TPacketBillingExpire * p);
	void		BillingCheck(const char * data);

	void		SendAllLoginToBilling();
	void		SendLoginToBilling(CLoginData * pkLD, bool bLogin);

	
	void		MarriageAdd(TPacketMarriageAdd * p);
	void		MarriageUpdate(TPacketMarriageUpdate * p);
	void		MarriageRemove(TPacketMarriageRemove * p);

	void		WeddingRequest(TPacketWeddingRequest * p);
	void		WeddingReady(TPacketWeddingReady * p);
	void		WeddingEnd(TPacketWeddingEnd * p);
#ifdef ENABLE_DROP_FROM_TABLE
	void		__SendDropTables(CPeer* peerTarget=NULL);
#endif

	
	

	
	
	void		MyshopPricelistUpdate(const TPacketMyshopPricelistHeader* pPacket);

	
	
	void		MyshopPricelistRequest(CPeer* peer, uint32_t dwHandle, uint32_t dwPlayerID);
	

	
	void		CreateObject(TPacketGDCreateObject * p);
	void		DeleteObject(uint32_t dwID);
	void		UpdateLand(uint32_t * pdw);

	
	void 		VCard(TPacketGDVCard * p);
	void		VCardProcess();

	
	void		BlockChat(TPacketBlockChat * p);
	
   
    private:
	int32_t					m_looping;
	socket_t				m_fdAccept;	
	TPeerList				m_peerList;

	CPeer *					m_pkAuthPeer;

#ifdef ENABLE_DROP_FROM_TABLE
	std::vector<TCommonDropItemTable>		m_vecCommonDropItemTable;
	std::vector<TDropItemTable>				m_vecDropItemTable;
	

	std::vector<TMobDropItemGroupKill>		m_vecMobDropItemGroupKill;
	std::vector<TMobDropItemKill>			m_vecMobDropItemKill;


	std::vector<TMobDropItemGroupLevel>		m_vecMobDropItemGroupLevel;
	std::vector<TMobDropItemLevel>			m_vecMobDropItemLevel;
#endif

	
	typedef std::unordered_map<uint32_t, CLoginData *> TLoginDataByLoginKey;
	
	TLoginDataByLoginKey			m_map_pkLoginData;

	
	typedef std::unordered_map<std::string, CLoginData *> TLoginDataByLogin;
	
	TLoginDataByLogin			m_map_pkLoginDataByLogin;
	
	
	typedef std::unordered_map<uint32_t, CLoginData *> TLoginDataByAID;
	
	TLoginDataByAID				m_map_pkLoginDataByAID;

	
	typedef std::unordered_map<std::string, CLoginData *> TLogonAccountMap;
	
	TLogonAccountMap			m_map_kLogonAccount;

	int32_t					m_iPlayerIDStart;
	int32_t					m_iPlayerDeleteLevelLimit;
	int32_t					m_iPlayerDeleteLevelLimitLower;
	bool					m_bChinaEventServer;

	std::vector<TMobTable>			m_vec_mobTable;
	std::vector<TItemTable>			m_vec_itemTable;
	std::map<uint32_t, TItemTable *>		m_map_itemTableByVnum;

	int32_t					m_iShopTableSize;
	TShopTable *				m_pShopTable;

	int32_t					m_iRefineTableSize;
	TRefineTable*				m_pRefineTable;

	std::vector<TSkillTable>		m_vec_skillTable;
	std::vector<TBanwordTable>		m_vec_banwordTable;
	std::vector<TItemAttrTable>		m_vec_itemAttrTable;
	std::vector<TItemAttrTable>		m_vec_itemRareTable;

	std::vector<building::TLand>		m_vec_kLandTable;
	std::vector<building::TObjectProto>	m_vec_kObjectProto;
	std::map<uint32_t, building::TObject *>	m_map_pkObjectTable;

	std::queue<TPacketGDVCard>		m_queue_vcard;

	bool					m_bShutdowned;

	TPlayerTableCacheMap			m_map_playerCache;  

	TItemCacheMap				m_map_itemCache;  
	TItemCacheSetPtrMap			m_map_pkItemCacheSetPtr;  

	
	
	TItemPriceListCacheMap m_mapItemPriceListCache;  
	

	TChannelStatusMap m_mChannelStatus;

	struct TPartyInfo
	{
	    uint8_t bRole;
	    uint8_t bLevel;

		TPartyInfo() :bRole(0), bLevel(0)
		{
		}
	};

	typedef std::map<uint32_t, TPartyInfo>	TPartyMember;
	typedef std::map<uint32_t, TPartyMember>	TPartyMap;
	typedef std::map<uint8_t, TPartyMap>	TPartyChannelMap;
	TPartyChannelMap m_map_pkChannelParty;

	typedef std::map<std::string, int32_t>	TEventFlagMap;
	TEventFlagMap m_map_lEventFlag;

	uint8_t					m_bLastHeader;
	int32_t					m_iCacheFlushCount;
	int32_t					m_iCacheFlushCountLimit;

    private :
	TItemIDRangeTable m_itemRange;

    public :
	bool InitializeNowItemID();
	uint32_t GetItemID();
	uint32_t GainItemID();
	TItemIDRangeTable GetItemRange() { return m_itemRange; }

	
    public:
	
	bool InitializeLocalization(); 

    private:
	std::vector<tLocale> m_vec_Locale;
	
	

	bool __GetAdminInfo(const char *szIP, std::vector<tAdminInfo> & rAdminVec);
	bool __GetHostInfo(std::vector<std::string> & rIPVec);
	

		
	
	void ReloadAdmin(CPeer * peer, TPacketReloadAdmin * p);
	
	void BreakMarriage(CPeer * peer, const char * data);

	struct TLogoutPlayer
	{
	    uint32_t	pid;
	    int32_t	time;

	    bool operator < (const TLogoutPlayer & r) 
	    {
		return (pid < r.pid);
	    }
	};

	typedef std::unordered_map<uint32_t, TLogoutPlayer*> TLogoutPlayerMap;
	
	TLogoutPlayerMap m_map_logout;
	
	void InsertLogoutPlayer(uint32_t pid);
	void DeleteLogoutPlayer(uint32_t pid);
	void UpdateLogoutPlayer();
	void UpdateItemCacheSet(uint32_t pid);

	void FlushPlayerCacheSet(uint32_t pid);

	
	void Election(CPeer * peer, uint32_t dwHandle, const char * p);
	void Candidacy(CPeer * peer, uint32_t dwHandle, const char * p);
	void AddMonarchMoney(CPeer * peer, uint32_t dwHandle, const char * p);
	void TakeMonarchMoney(CPeer * peer, uint32_t dwHandle, const char * p);
	void ComeToVote(CPeer * peer, uint32_t dwHandle, const char * p);
	void RMCandidacy(CPeer * peer, uint32_t dwHandle, const char * p);
	void SetMonarch(CPeer * peer, uint32_t dwHandle, const char * p);
	void RMMonarch(CPeer * peer, uint32_t dwHandle, const char * p);
								

	void DecMonarchMoney(CPeer * peer, uint32_t dwHandle, const char * p);
	

	void ChangeMonarchLord(CPeer* peer, uint32_t dwHandle, TPacketChangeMonarchLord* info);
	void BlockException(TPacketBlockException *data);

	void SendSpareItemIDRange(CPeer* peer);

	void UpdateHorseName(TPacketUpdateHorseName* data, CPeer* peer);
	void AckHorseName(uint32_t dwPID, CPeer* peer);
	void DeleteLoginKey(TPacketDC *data);
	void ResetLastPlayerID(const TPacketNeedLoginLogInfo* data);
	
	void DeleteAwardId(TPacketDeleteAwardID* data);
	void UpdateChannelStatus(TChannelStatus* pData);
	void RequestChannelStatus(CPeer* peer, uint32_t dwHandle);
#ifdef __AUCTION__
	void EnrollInAuction (CPeer * peer, uint32_t owner_id, AuctionEnrollProductInfo* data);
	void EnrollInSale (CPeer * peer, uint32_t owner_id, AuctionEnrollSaleInfo* data);
	void EnrollInWish (CPeer * peer, uint32_t wisher_id, AuctionEnrollWishInfo* data);
	void AuctionBid (CPeer * peer, uint32_t bidder_id, AuctionBidInfo* data);
	void AuctionImpur (CPeer * peer, uint32_t purchaser_id, AuctionImpurInfo* data);
	void AuctionGetAuctionedItem (CPeer * peer, uint32_t actor_id, uint32_t item_id);
	void AuctionBuySoldItem (CPeer * peer, uint32_t actor_id, uint32_t item_id);
	void AuctionCancelAuction (CPeer * peer, uint32_t actor_id, uint32_t item_id);
	void AuctionCancelWish (CPeer * peer, uint32_t actor_id, uint32_t item_num);
	void AuctionCancelSale (CPeer * peer, uint32_t actor_id, uint32_t item_id);
	void AuctionDeleteAuctionItem (CPeer * peer, uint32_t actor_id, uint32_t item_id);
	void AuctionDeleteSaleItem (CPeer * peer, uint32_t actor_id, uint32_t item_id);
	void AuctionReBid (CPeer * peer, uint32_t bidder_id, AuctionBidInfo* data);
	void AuctionBidCancel (CPeer * peer, uint32_t bidder_id, uint32_t item_id);
#endif
};


template<class Func>	
Func CClientManager::for_each_peer(Func f)
{
    TPeerList::iterator it;
    for (it = m_peerList.begin(); it!=m_peerList.end();++it)
    {
	f(*it);
    }
    return f;
}
