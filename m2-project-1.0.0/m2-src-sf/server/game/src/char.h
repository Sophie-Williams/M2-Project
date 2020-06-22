#pragma once

#include <boost/unordered_map.hpp>
#include "../../common/stl.h"
#include "entity.h"
#include "FSM.h"
#include "horse_rider.h"
#include "vid.h"
#include "constants.h"
#include "affect.h"
#include "affect_flag.h"
#include "cube.h"
#include "mining.h"

class CBuffOnAttributes;
class CPetSystem;

#ifdef NEW_PET_SYSTEM
class CNewPetSystem;
#endif

#ifdef ENABLE_MOUNT_COSTUME_SYSTEM
class CMountSystem;
#endif

#define INSTANT_FLAG_DEATH_PENALTY		(1 << 0)
#define INSTANT_FLAG_SHOP			(1 << 1)
#define INSTANT_FLAG_EXCHANGE			(1 << 2)
#define INSTANT_FLAG_STUN			(1 << 3)
#define INSTANT_FLAG_NO_REWARD			(1 << 4)

#define AI_FLAG_NPC				(1 << 0)
#define AI_FLAG_AGGRESSIVE			(1 << 1)
#define AI_FLAG_HELPER				(1 << 2)
#define AI_FLAG_STAYZONE			(1 << 3)


#define SET_OVER_TIME(ch, time)	(ch)->SetOverTime(time)

extern int32_t g_nPortalLimitTime;

enum
{
	MAIN_RACE_WARRIOR_M,
	MAIN_RACE_ASSASSIN_W,
	MAIN_RACE_SURA_M,
	MAIN_RACE_SHAMAN_W,
	MAIN_RACE_WARRIOR_W,
	MAIN_RACE_ASSASSIN_M,
	MAIN_RACE_SURA_W,
	MAIN_RACE_SHAMAN_M,
	MAIN_RACE_MAX_NUM,
};

enum
{
	POISON_LENGTH = 30,
	STAMINA_PER_STEP = 1,
	SAFEBOX_PAGE_SIZE = 9,
	AI_CHANGE_ATTACK_POISITION_TIME_NEAR = 10000,
	AI_CHANGE_ATTACK_POISITION_TIME_FAR = 1000,
	AI_CHANGE_ATTACK_POISITION_DISTANCE = 100,
	SUMMON_MONSTER_COUNT = 3,
};

enum
{
	FLY_NONE,
	FLY_EXP,
	FLY_HP_MEDIUM,
	FLY_HP_BIG,
	FLY_SP_SMALL,
	FLY_SP_MEDIUM,
	FLY_SP_BIG,
	FLY_FIREWORK1,
	FLY_FIREWORK2,
	FLY_FIREWORK3,
	FLY_FIREWORK4,
	FLY_FIREWORK5,
	FLY_FIREWORK6,
	FLY_FIREWORK_CHRISTMAS,
	FLY_CHAIN_LIGHTNING,
	FLY_HP_SMALL,
	FLY_SKILL_MUYEONG,
	FLY_QUIVER_ATTACK_NORMAL,
};

enum EDamageType
{
	DAMAGE_TYPE_NONE,
	DAMAGE_TYPE_NORMAL,
	DAMAGE_TYPE_NORMAL_RANGE,
	DAMAGE_TYPE_MELEE,
	DAMAGE_TYPE_RANGE,
	DAMAGE_TYPE_FIRE,
	DAMAGE_TYPE_ICE,
	DAMAGE_TYPE_ELEC,
	DAMAGE_TYPE_MAGIC,
	DAMAGE_TYPE_POISON,
	DAMAGE_TYPE_SPECIAL,
};

enum EPointTypes
{
	POINT_NONE,
	POINT_LEVEL,
	POINT_VOICE,
	POINT_EXP,
	POINT_NEXT_EXP,
	POINT_HP,
	POINT_MAX_HP,
	POINT_SP,
	POINT_MAX_SP,
	POINT_STAMINA,
	POINT_MAX_STAMINA,

	POINT_GOLD,
	POINT_ST,
	POINT_HT,
	POINT_DX,
	POINT_IQ,
	POINT_DEF_GRADE,
	POINT_ATT_SPEED,
	POINT_ATT_GRADE,
	POINT_MOV_SPEED,
	POINT_CLIENT_DEF_GRADE,
	POINT_CASTING_SPEED,
	POINT_MAGIC_ATT_GRADE,
	POINT_MAGIC_DEF_GRADE,
	POINT_EMPIRE_POINT,
	POINT_LEVEL_STEP,
	POINT_STAT,
	POINT_SUB_SKILL,
	POINT_SKILL,
	POINT_WEAPON_MIN,
	POINT_WEAPON_MAX,
	POINT_PLAYTIME,
	POINT_HP_REGEN,
	POINT_SP_REGEN,

	POINT_BOW_DISTANCE,

	POINT_HP_RECOVERY,
	POINT_SP_RECOVERY,

	POINT_POISON_PCT,
	POINT_STUN_PCT,
	POINT_SLOW_PCT,
	POINT_CRITICAL_PCT,
	POINT_PENETRATE_PCT,
	POINT_CURSE_PCT,

	POINT_ATTBONUS_HUMAN,
	POINT_ATTBONUS_ANIMAL,
	POINT_ATTBONUS_ORC,
	POINT_ATTBONUS_MILGYO,
	POINT_ATTBONUS_UNDEAD,
	POINT_ATTBONUS_DEVIL,
	POINT_ATTBONUS_INSECT,
	POINT_ATTBONUS_FIRE,
	POINT_ATTBONUS_ICE,
	POINT_ATTBONUS_DESERT,
	POINT_ATTBONUS_MONSTER,
	POINT_ATTBONUS_WARRIOR,
	POINT_ATTBONUS_ASSASSIN,
	POINT_ATTBONUS_SURA,
	POINT_ATTBONUS_SHAMAN,
	POINT_ATTBONUS_TREE,

	POINT_RESIST_WARRIOR,
	POINT_RESIST_ASSASSIN,
	POINT_RESIST_SURA,
	POINT_RESIST_SHAMAN,

	POINT_STEAL_HP,
	POINT_STEAL_SP,

	POINT_MANA_BURN_PCT,

	POINT_DAMAGE_SP_RECOVER,

	POINT_BLOCK,
	POINT_DODGE,

	POINT_RESIST_SWORD,
	POINT_RESIST_TWOHAND,
	POINT_RESIST_DAGGER,
	POINT_RESIST_BELL,
	POINT_RESIST_FAN,
	POINT_RESIST_BOW,
	POINT_RESIST_FIRE,
	POINT_RESIST_ELEC,
	POINT_RESIST_MAGIC,
	POINT_RESIST_WIND,

	POINT_REFLECT_MELEE,


	POINT_REFLECT_CURSE,
	POINT_POISON_REDUCE,


	POINT_KILL_SP_RECOVER,
	POINT_EXP_DOUBLE_BONUS,
	POINT_GOLD_DOUBLE_BONUS,
	POINT_ITEM_DROP_BONUS,


	POINT_POTION_BONUS,
	POINT_KILL_HP_RECOVERY,

	POINT_IMMUNE_STUN,
	POINT_IMMUNE_SLOW,
	POINT_IMMUNE_FALL,


	POINT_PARTY_ATTACKER_BONUS,
	POINT_PARTY_TANKER_BONUS,

	POINT_ATT_BONUS,
	POINT_DEF_BONUS,

	POINT_ATT_GRADE_BONUS,
	POINT_DEF_GRADE_BONUS,
	POINT_MAGIC_ATT_GRADE_BONUS,
	POINT_MAGIC_DEF_GRADE_BONUS,

	POINT_RESIST_NORMAL_DAMAGE,

	POINT_HIT_HP_RECOVERY,
	POINT_HIT_SP_RECOVERY,
	POINT_MANASHIELD,

	POINT_PARTY_BUFFER_BONUS,
	POINT_PARTY_SKILL_MASTER_BONUS,

	POINT_HP_RECOVER_CONTINUE,
	POINT_SP_RECOVER_CONTINUE,

	POINT_STEAL_GOLD,
	POINT_POLYMORPH,
	POINT_MOUNT,

	POINT_PARTY_HASTE_BONUS,
	POINT_PARTY_DEFENDER_BONUS,
	POINT_STAT_RESET_COUNT,

	POINT_HORSE_SKILL,

	POINT_MALL_ATTBONUS,
	POINT_MALL_DEFBONUS,
	POINT_MALL_EXPBONUS,
	POINT_MALL_ITEMBONUS,
	POINT_MALL_GOLDBONUS,

	POINT_MAX_HP_PCT,
	POINT_MAX_SP_PCT,

	POINT_SKILL_DAMAGE_BONUS,
	POINT_NORMAL_HIT_DAMAGE_BONUS,

	POINT_SKILL_DEFEND_BONUS,
	POINT_NORMAL_HIT_DEFEND_BONUS,

	POINT_PC_BANG_EXP_BONUS,
	POINT_PC_BANG_DROP_BONUS,
	POINT_RAMADAN_CANDY_BONUS_EXP,

	POINT_ENERGY = 128,

	POINT_ENERGY_END_TIME = 129,

	POINT_COSTUME_ATTR_BONUS = 130,
	POINT_MAGIC_ATT_BONUS_PER = 131,
	POINT_MELEE_MAGIC_ATT_BONUS_PER = 132,

	POINT_RESIST_ICE = 133,
	POINT_RESIST_EARTH = 134,
	POINT_RESIST_DARK = 135,  

	POINT_RESIST_CRITICAL = 136,
	POINT_RESIST_PENETRATE = 137,
#ifdef __ANTI_RESIST_MAGIC_BONUS__
	POINT_ANTI_RESIST_MAGIC = 138,
#endif

#ifdef ENABLE_EXTEND_INVEN_SYSTEM
	POINT_INVEN = 145,
#endif

#ifdef ENABLE_CHEQUE_SYSTEM
	POINT_CHEQUE = 146,
#endif

#ifdef __GAYA__
	POINT_GAYA = 175,
#endif
};

enum EPKModes
{
	PK_MODE_PEACE,
	PK_MODE_REVENGE,
	PK_MODE_FREE,
	PK_MODE_PROTECT,
	PK_MODE_GUILD,
	PK_MODE_MAX_NUM
};

enum EPositions
{
	POS_DEAD,
	POS_SLEEPING,
	POS_RESTING,
	POS_SITTING,
	POS_FISHING,
	POS_FIGHTING,
	POS_MOUNTING,
	POS_STANDING
};

enum EBlockAction
{
	BLOCK_EXCHANGE		= (1 << 0),
	BLOCK_PARTY_INVITE		= (1 << 1),
	BLOCK_GUILD_INVITE		= (1 << 2),
	BLOCK_WHISPER		= (1 << 3),
	BLOCK_MESSENGER_INVITE	= (1 << 4),
	BLOCK_PARTY_REQUEST		= (1 << 5),
};

struct DynamicCharacterPtr {
	DynamicCharacterPtr() : is_pc(false), id(0) {}
	DynamicCharacterPtr(const DynamicCharacterPtr& o)
		: is_pc(o.is_pc), id(o.id) {}

	LPCHARACTER Get() const; 
	void Reset() {
		is_pc = false;
		id = 0;
	}

	DynamicCharacterPtr& operator=(const DynamicCharacterPtr& rhs) {
		is_pc = rhs.is_pc;
		id = rhs.id;
		return *this;
	}

	DynamicCharacterPtr& operator=(LPCHARACTER character);
	operator LPCHARACTER() const {
		return Get();
	}

	bool is_pc;
	uint32_t id;
};

typedef struct character_point
{
	int64_t			points[POINT_MAX_NUM];

	uint8_t			job;
	uint8_t			voice;

	uint8_t			level;
	uint32_t			exp;
	int64_t			gold;

#ifdef __GAYA__
	int32_t 			gaya;
#endif
#ifdef ENABLE_CHEQUE_SYSTEM
	int32_t				cheque;
#endif

#ifdef ENABLE_EXTEND_INVEN_SYSTEM
	int32_t 			envanter;
#endif

	int32_t				hp;
	int32_t				sp;

	int32_t				iRandomHP;
	int32_t				iRandomSP;

	int32_t				stamina;

	uint8_t			skill_group;
} CHARACTER_POINT;

typedef struct character_point_instant
{
	int64_t			points[POINT_MAX_NUM];

	float			fRot;

	int32_t				iMaxHP;
	int32_t				iMaxSP;

	int32_t			position;

	int32_t			instant_flag;
	uint32_t			dwAIFlag;
	uint32_t			dwImmuneFlag;
	uint32_t			dwLastShoutPulse;

	uint32_t			parts[PART_MAX_NUM];

	LPITEM			pItems[INVENTORY_AND_EQUIP_SLOT_MAX];
	uint8_t			bItemGrid[INVENTORY_AND_EQUIP_SLOT_MAX];

	LPITEM			pDSItems[DRAGON_SOUL_INVENTORY_MAX_NUM];
	uint16_t			wDSItemGrid[DRAGON_SOUL_INVENTORY_MAX_NUM];

	LPITEM			pCubeItems[CUBE_MAX_NUM];
	LPCHARACTER		pCubeNpc;
	#ifdef __ACCE_SYSTEM__
	LPITEM	pAcceMaterials[ACCE_WINDOW_MAX_MATERIALS];
	#endif
	

	LPCHARACTER			battle_victim;

	uint8_t			gm_level;

	uint8_t			bBasePart;

	int32_t				iMaxStamina;

	uint8_t			bBlockMode;

	int32_t				iDragonSoulActiveDeck;
	LPENTITY		m_pDragonSoulRefineWindowOpener;
} CHARACTER_POINT_INSTANT;

#define TRIGGERPARAM		LPCHARACTER ch, LPCHARACTER causer

typedef struct trigger
{
	uint8_t	type;
	int32_t		(*func) (TRIGGERPARAM);
	int32_t	value;
} TRIGGER;

class CTrigger
{
	public:
		CTrigger() : bType(0), pFunc(NULL)
		{
		}

		uint8_t	bType;
		int32_t	(*pFunc) (TRIGGERPARAM);
};

EVENTINFO(char_event_info)
{
	DynamicCharacterPtr ch;
};

struct TSkillUseInfo
{
	int32_t	    iHitCount;
	int32_t	    iMaxHitCount;
	int32_t	    iSplashCount;
	uint32_t   dwNextSkillUsableTime;
	int32_t	    iRange;
	bool    bUsed;
	uint32_t   dwVID;
	bool    isGrandMaster;

	boost::unordered_map<VID, uint32_t> TargetVIDMap;

	TSkillUseInfo()
		: iHitCount(0), iMaxHitCount(0), iSplashCount(0), dwNextSkillUsableTime(0), iRange(0), bUsed(false),
		dwVID(0), isGrandMaster(false)
   	{}

	bool    HitOnce(uint32_t dwVnum = 0);

	bool    UseSkill(bool isGrandMaster, uint32_t vid, uint32_t dwCooltime, int32_t splashcount = 1, int32_t hitcount = -1, int32_t range = -1);
	uint32_t   GetMainTargetVID() const	{ return dwVID; }
	void    SetMainTargetVID(uint32_t vid) { dwVID=vid; }
	void    ResetHitCount() { if (iSplashCount) { iHitCount = iMaxHitCount; iSplashCount--; } }
};

typedef struct packet_party_update TPacketGCPartyUpdate;
class CExchange;
class CSkillProto;
class CParty;
class CDungeon;
class CWarMap;
class CAffect;
class CGuild;
class CSafebox;
class CArena;

class CShop;
typedef class CShop * LPSHOP;

class CMob;
class CMobInstance;
typedef struct SMobSkillInfo TMobSkillInfo;


extern int32_t GetSkillPowerByLevelFromType(int32_t job, int32_t skillgroup, int32_t skilllevel);


namespace marriage
{
	class WeddingMap;
}
enum e_overtime
{
	OT_NONE,
	OT_3HOUR,
	OT_5HOUR,
};

class CHARACTER : public CEntity, public CFSM, public CHorseRider
{
	protected:
		virtual void	EncodeInsertPacket(LPENTITY entity);
		virtual void	EncodeRemovePacket(LPENTITY entity);
		

	public:
		LPCHARACTER			FindCharacterInView(const char * name, bool bFindPCOnly);
		void				UpdatePacket();

	protected:
		CStateTemplate<CHARACTER>	m_stateMove;
		CStateTemplate<CHARACTER>	m_stateBattle;
		CStateTemplate<CHARACTER>	m_stateIdle;

	public:
		virtual void		StateMove();
		virtual void		StateBattle();
		virtual void		StateIdle();
		virtual void		StateFlag();
		virtual void		StateFlagBase();
		void				StateHorse();

	protected:
		void				__StateIdle_Monster();
		void				__StateIdle_Stone();
		void				__StateIdle_NPC();

	public:
		uint32_t GetAIFlag() const	{ return m_pointsInstant.dwAIFlag; }
	
		void				SetAggressive();
		bool				IsAggressive() const;

		void				SetCoward();
		bool				IsCoward() const;
		void				CowardEscape();

		void				SetNoAttackShinsu();
		bool				IsNoAttackShinsu() const;

		void				SetNoAttackChunjo();
		bool				IsNoAttackChunjo() const;

		void				SetNoAttackJinno();
		bool				IsNoAttackJinno() const;

		void				SetAttackMob();
		bool				IsAttackMob() const;

		virtual void			BeginStateEmpty();
		virtual void			EndStateEmpty() {}

		void				RestartAtSamePos();

	protected:
		uint32_t				m_dwStateDuration;

	public:
		CHARACTER();
		virtual ~CHARACTER();

		void			Create(const char * c_pszName, uint32_t vid, bool isPC);
		void			Destroy();

		void			Disconnect(const char * c_pszReason);

	protected:
		void			Initialize();

	public:
		uint32_t			GetPlayerID() const	{ return m_dwPlayerID; }

		void			SetPlayerProto(const TPlayerTable * table);
		void			CreatePlayerProto(TPlayerTable & tab);

		void			SetProto(const CMob * c_pkMob);
		uint16_t			GetRaceNum() const;

		void			Save();	
		void			SaveReal();
		void			FlushDelayedSaveItem();

		const char *	GetName() const;
		const VID &		GetVID() const		{ return m_vid;		}

		void			SetName(const std::string& name) { m_stName = name; }

		void			SetRace(uint8_t race);
		bool			ChangeSex();

		uint32_t			GetAID() const;
		int32_t				GetChangeEmpireCount() const;
		void			SetChangeEmpireCount();
		int32_t				ChangeEmpire(uint8_t empire);

		uint8_t			GetJob() const;
		uint8_t			GetCharType() const;

		bool			IsPC() const		{ return GetDesc() ? true : false; }
		bool			IsNPC()	const		{ return m_bCharType != CHAR_TYPE_PC; }
		bool			IsMonster()	const	{ return m_bCharType == CHAR_TYPE_MONSTER; }
		bool			IsStone() const		{ return m_bCharType == CHAR_TYPE_STONE; }
		bool			IsDoor() const		{ return m_bCharType == CHAR_TYPE_DOOR; } 
		bool			IsBuilding() const	{ return m_bCharType == CHAR_TYPE_BUILDING;  }
		bool			IsWarp() const		{ return m_bCharType == CHAR_TYPE_WARP; }
		bool			IsGoto() const		{ return m_bCharType == CHAR_TYPE_GOTO; }


		uint32_t			GetLastShoutPulse() const	{ return m_pointsInstant.dwLastShoutPulse; }
		void			SetLastShoutPulse(uint32_t pulse) { m_pointsInstant.dwLastShoutPulse = pulse; }
		int32_t				GetLevel() const		{ return m_points.level;	}
		void			SetLevel(uint8_t level);

		uint8_t			GetGMLevel() const;
		BOOL 			IsGM() const;
		void			SetGMLevel(); 

		uint32_t			GetExp() const		{ return m_points.exp;	}
		void			SetExp(uint32_t exp)	{ m_points.exp = exp;	}
		bool	block_exp;

		uint32_t			GetNextExp() const;

#ifdef NEW_PET_SYSTEM
		uint32_t			PetGetNextExp() const;
#endif

		LPCHARACTER		DistributeExp();
		void			DistributeHP(LPCHARACTER pkKiller);
		void			DistributeSP(LPCHARACTER pkKiller, int32_t iMethod=0);

		void			SetPosition(int32_t pos);
		bool			IsPosition(int32_t pos) const	{ return m_pointsInstant.position == pos ? true : false; }
		int32_t				GetPosition() const		{ return m_pointsInstant.position; }

		void			SetPart(uint8_t bPartPos, uint16_t wVal);
		uint16_t			GetPart(uint8_t bPartPos) const;
		uint16_t			GetOriginalPart(uint8_t bPartPos) const;

		void			SetHP(int32_t hp)		{ m_points.hp = hp; }
		int32_t				GetHP() const		{ return m_points.hp; }

		void			SetSP(int32_t sp)		{ m_points.sp = sp; }
		int32_t				GetSP() const		{ return m_points.sp; }

		void			SetStamina(int32_t stamina)	{ m_points.stamina = stamina; }
		int32_t				GetStamina() const		{ return m_points.stamina; }

		void			SetMaxHP(int32_t iVal)	{ m_pointsInstant.iMaxHP = iVal; }
		int32_t				GetMaxHP() const	{ return m_pointsInstant.iMaxHP; }

		void			SetMaxSP(int32_t iVal)	{ m_pointsInstant.iMaxSP = iVal; }
		int32_t				GetMaxSP() const	{ return m_pointsInstant.iMaxSP; }

		void			SetMaxStamina(int32_t iVal)	{ m_pointsInstant.iMaxStamina = iVal; }
		int32_t				GetMaxStamina() const	{ return m_pointsInstant.iMaxStamina; }

		void			SetRandomHP(int32_t v)	{ m_points.iRandomHP = v; }
		void			SetRandomSP(int32_t v)	{ m_points.iRandomSP = v; }

		int32_t				GetRandomHP() const	{ return m_points.iRandomHP; }
		int32_t				GetRandomSP() const	{ return m_points.iRandomSP; }

		int32_t				GetHPPct() const;

		void			SetRealPoint(uint8_t idx, int32_t val);
		int32_t				GetRealPoint(uint8_t idx) const;

		void			SetPoint(uint8_t idx, int64_t val);
		int64_t				GetPoint(uint8_t idx) const;
		int32_t				GetLimitPoint(uint8_t idx) const;
		int32_t				GetPolymorphPoint(uint8_t idx) const;

		const TMobTable &	GetMobTable() const;
		uint8_t				GetMobRank() const;
		uint8_t				GetMobBattleType() const;
		uint8_t				GetMobSize() const;
		uint32_t				GetMobDamageMin() const;
		uint32_t				GetMobDamageMax() const;
		uint16_t				GetMobAttackRange() const;
		uint32_t				GetMobDropItemVnum() const;
		float				GetMobDamageMultiply() const;

		bool			IsBerserker() const;
		bool			IsBerserk() const;
		void			SetBerserk(bool mode);

		bool			IsStoneSkinner() const;

		bool			IsGodSpeeder() const;
		bool			IsGodSpeed() const;
		void			SetGodSpeed(bool mode);

		bool			IsDeathBlower() const;
		bool			IsDeathBlow() const;

		bool			IsReviver() const;
		bool			HasReviverInParty() const;
		bool			IsRevive() const;
		void			SetRevive(bool mode);

		bool			IsRaceFlag(uint32_t dwBit) const;
		bool			IsSummonMonster() const;
		uint32_t			GetSummonVnum() const;

		uint32_t			GetPolymorphItemVnum() const;
		uint32_t			GetMonsterDrainSPPoint() const;

		void			MainCharacterPacket();

		void			ComputePoints();
		void			ComputeBattlePoints();
		void			PointChange(uint8_t type, int64_t amount, bool bAmount = false, bool bBroadcast = false);
		void			PointsPacket();
		void			ApplyPoint(uint8_t bApplyType, int32_t iVal);

#ifdef NEW_PET_SYSTEM
		void			SendPetLevelUpEffect(int32_t vid, int32_t type, int32_t value, int32_t amount);
#endif

		void			CheckMaximumPoints();

		bool			Show(int32_t lMapIndex, int32_t x, int32_t y, int32_t z = LONG_MAX, bool bShowSpawnMotion = false, bool bAggressive = false);

		void			Sitdown(int32_t is_ground);
		void			Standup();

		void			SetRotation(float fRot);
		void			SetRotationToXY(int32_t x, int32_t y);
		float			GetRotation() const	{ return m_pointsInstant.fRot; }

		void			MotionPacketEncode(uint8_t motion, LPCHARACTER victim, struct packet_motion * packet);
		void			Motion(uint8_t motion, LPCHARACTER victim = NULL);

		void			ChatPacket(uint8_t type, const char *format, ...);
		void			MonsterChat(uint8_t bMonsterChatType);
		void			SendGreetMessage();

		void			ResetPoint(int32_t iLv);

		void			SetBlockMode(uint8_t bFlag);
		void			SetBlockModeForce(uint8_t bFlag);
		bool			IsBlockMode(uint8_t bFlag) const	{ return (m_pointsInstant.bBlockMode & bFlag)?true:false; }

		bool			IsPolymorphed() const		{ return m_dwPolymorphRace>0; }
		bool			IsPolyMaintainStat() const	{ return m_bPolyMaintainStat; }
		void			SetPolymorph(uint32_t dwRaceNum, bool bMaintainStat = false);
		uint32_t			GetPolymorphVnum() const	{ return m_dwPolymorphRace; }
		int32_t				GetPolymorphPower() const;

		bool			IsNearWater() const;
		void			fishing();
		void			fishing_take();

		void			mining(LPCHARACTER chLoad);
		void			mining_cancel();
		void			mining_take();

		void			ResetPlayTime(uint32_t dwTimeRemain = 0);

		void			CreateFly(uint8_t bType, LPCHARACTER pkVictim);

		void			ResetChatCounter();
		uint8_t			IncreaseChatCounter();
		uint8_t			GetChatCounter() const;
		
		void			ResetMountCounter();
		uint8_t			IncreaseMountCounter();
		uint8_t			GetMountCounter() const;

	protected:
		uint32_t			m_dwPolymorphRace;
		bool			m_bPolyMaintainStat;
		uint32_t			m_dwLoginPlayTime;
		uint32_t			m_dwPlayerID;
		VID				m_vid;
		std::string		m_stName;
		
#ifdef NEW_PET_SYSTEM
		uint8_t			m_stImmortalSt;
#endif
		
		uint8_t			m_bCharType;

#ifdef NEW_PET_SYSTEM
		uint32_t			m_newpetskillcd[3];
#endif
		
		CHARACTER_POINT		m_points;
		CHARACTER_POINT_INSTANT	m_pointsInstant;

		int32_t				m_iMoveCount;
		uint32_t			m_dwPlayStartTime;
		uint8_t			m_bAddChrState;
		bool			m_bSkipSave;
		std::string		m_stMobile;
		char			m_szMobileAuth[5];
		uint8_t			m_bChatCounter;
		uint8_t			m_bMountCounter;

	public:
		bool			IsStateMove() const			{ return IsState((CState&)m_stateMove); }
		bool			IsStateIdle() const			{ return IsState((CState&)m_stateIdle); }
		bool			IsWalking() const			{ return m_bNowWalking || GetStamina()<=0; }
		void			SetWalking(bool bWalkFlag)	{ m_bWalking=bWalkFlag; }
		void			SetNowWalking(bool bWalkFlag);	
		void			ResetWalking()			{ SetNowWalking(m_bWalking); }

		bool			Goto(int32_t x, int32_t y);
		void			Stop();

		bool			CanMove() const;

		void			SyncPacket();
		bool			Sync(int32_t x, int32_t y);
		bool			Move(int32_t x, int32_t y);
		void			OnMove(bool bIsAttack = false);	
		uint32_t			GetMotionMode() const;
		float			GetMoveMotionSpeed() const;
		float			GetMoveSpeed() const;
		void			CalculateMoveDuration();
		void			SendMovePacket(uint8_t bFunc, uint8_t bArg, uint32_t x, uint32_t y, uint32_t dwDuration, uint32_t dwTime=0, int32_t iRot=-1);
		uint32_t			GetCurrentMoveDuration() const	{ return m_dwMoveDuration; }
		uint32_t			GetWalkStartTime() const	{ return m_dwWalkStartTime; }
		uint32_t			GetLastMoveTime() const		{ return m_dwLastMoveTime; }
		uint32_t			GetLastAttackTime() const	{ return m_dwLastAttackTime; }

		void			SetLastAttacked(uint32_t time);

		bool			SetSyncOwner(LPCHARACTER ch, bool bRemoveFromList = true);
		bool			IsSyncOwner(LPCHARACTER ch) const;

		bool			WarpSet(int32_t x, int32_t y, int32_t lRealMapIndex = 0);
		void			SetWarpLocation(int32_t lMapIndex, int32_t x, int32_t y);
		void			WarpEnd();
		const PIXEL_POSITION & GetWarpPosition() const { return m_posWarp; }
		bool			WarpToPID(uint32_t dwPID);

		void			SaveExitLocation();
		void			ExitToSavedLocation();

		void			StartStaminaConsume();
		void			StopStaminaConsume();
		bool			IsStaminaConsume() const;
		bool			IsStaminaHalfConsume() const;

		void			ResetStopTime();
		uint32_t			GetStopTime() const;

	protected:
		void			ClearSync();

		float			m_fSyncTime;
		LPCHARACTER		m_pkChrSyncOwner;
		CHARACTER_LIST	m_kLst_pkChrSyncOwned;

		PIXEL_POSITION	m_posDest;
		PIXEL_POSITION	m_posStart;
		PIXEL_POSITION	m_posWarp;
		int32_t			m_lWarpMapIndex;

		PIXEL_POSITION	m_posExit;
		int32_t			m_lExitMapIndex;

		uint32_t			m_dwMoveStartTime;
		uint32_t			m_dwMoveDuration;

		uint32_t			m_dwLastMoveTime;
		uint32_t			m_dwLastAttackTime;
		uint32_t			m_dwWalkStartTime;
		uint32_t			m_dwStopTime;

		bool			m_bWalking;
		bool			m_bNowWalking;
		bool			m_bStaminaConsume;

	public:
		void			SyncQuickslot(uint8_t bType, uint8_t bOldPos, uint8_t bNewPos);
		bool			GetQuickslot(uint8_t pos, TQuickslot ** ppSlot);
		bool			SetQuickslot(uint8_t pos, TQuickslot & rSlot);
		bool			DelQuickslot(uint8_t pos);
		bool			SwapQuickslot(uint8_t a, uint8_t b);
		void			ChainQuickslotItem(LPITEM pItem, uint8_t bType, uint8_t bOldPos);

	protected:
		TQuickslot		m_quickslot[QUICKSLOT_MAX_NUM];

	public:
		void			StartAffectEvent();
		void			ClearAffect(bool bSave=false);
		void			ComputeAffect(CAffect * pkAff, bool bAdd);
		bool			AddAffect(uint32_t dwType, uint8_t bApplyOn, int32_t lApplyValue, uint32_t dwFlag, int32_t lDuration, int32_t lSPCost, bool bOverride, bool IsCube = false);
		void			RefreshAffect();
		bool			RemoveAffect(uint32_t dwType);
		bool			IsAffectFlag(uint32_t dwAff) const;

		bool			UpdateAffect();
		int32_t				ProcessAffect();

		void			LoadAffect(uint32_t dwCount, TPacketAffectElement * pElements);
		void			SaveAffect();

		bool			IsLoadedAffect() const	{ return m_bIsLoadedAffect; }		

		bool			IsGoodAffect(uint8_t bAffectType) const;

		void			RemoveGoodAffect();
		void			RemoveBadAffect();

		CAffect *		FindAffect(uint32_t dwType, uint8_t bApply=APPLY_NONE) const;
		const std::list<CAffect *> & GetAffectContainer() const	{ return m_list_pkAffect; }
		bool			RemoveAffect(CAffect * pkAff);

	protected:
		bool			m_bIsLoadedAffect;
		TAffectFlag		m_afAffectFlag;
		std::list<CAffect *>	m_list_pkAffect;

	public:
		void			SetParty(LPPARTY pkParty);
		LPPARTY			GetParty() const	{ return m_pkParty; }

		bool			RequestToParty(LPCHARACTER leader);
		void			DenyToParty(LPCHARACTER member);
		void			AcceptToParty(LPCHARACTER member);

		void			PartyInvite(LPCHARACTER pchInvitee);

		void			PartyInviteAccept(LPCHARACTER pchInvitee);

		void			PartyInviteDeny(uint32_t dwPID);

		bool			BuildUpdatePartyPacket(TPacketGCPartyUpdate & out);
		int32_t				GetLeadershipSkillLevel() const;

		bool			CanSummon(int32_t iLeaderShip);

		void			SetPartyRequestEvent(LPEVENT pkEvent) { m_pkPartyRequestEvent = pkEvent; }

	protected:
		void			PartyJoin(LPCHARACTER pkLeader);

		enum PartyJoinErrCode {
			PERR_NONE		= 0,
			PERR_SERVER,
			PERR_DUNGEON,
			PERR_OBSERVER,
			PERR_LVBOUNDARY,
			PERR_LOWLEVEL,
			PERR_HILEVEL,
			PERR_ALREADYJOIN,
			PERR_PARTYISFULL,
			PERR_SEPARATOR,
			PERR_DIFFEMPIRE,
			PERR_MAX
		};

		static PartyJoinErrCode	IsPartyJoinableCondition(const LPCHARACTER pchLeader, const LPCHARACTER pchGuest);
		static PartyJoinErrCode	IsPartyJoinableMutableCondition(const LPCHARACTER pchLeader, const LPCHARACTER pchGuest);

		LPPARTY			m_pkParty;
		uint32_t			m_dwLastDeadTime;
		LPEVENT			m_pkPartyRequestEvent;

		typedef std::map< uint32_t, LPEVENT >	EventMap;
		EventMap		m_PartyInviteEventMap;

	public:
		void			SetDungeon(LPDUNGEON pkDungeon);
		LPDUNGEON		GetDungeon() const	{ return m_pkDungeon; }
		LPDUNGEON		GetDungeonForce() const;
	protected:
		LPDUNGEON	m_pkDungeon;
		int32_t			m_iEventAttr;

	public:
		void			SetGuild(CGuild * pGuild);
		CGuild*			GetGuild() const	{ return m_pGuild; }

		void			SetWarMap(CWarMap* pWarMap);
		CWarMap*		GetWarMap() const	{ return m_pWarMap; }

	protected:
		CGuild *		m_pGuild;
		uint32_t			m_dwUnderGuildWarInfoMessageTime;
		CWarMap *		m_pWarMap;

	public:
		bool			CanHandleItem(bool bSkipRefineCheck = false, bool bSkipObserver = false);

		bool			IsItemLoaded() const	{ return m_bItemLoaded; }
		void			SetItemLoaded()	{ m_bItemLoaded = true; }

		void			ClearItem();

#ifdef ENABLE_SORT_INVEN
		void			SortInven(uint8_t option);
		uint32_t			GetLastSortTime() const { return m_dwLastSortTime; }
		void			SetLastSortTime(uint32_t time) { m_dwLastSortTime = time; }
#endif

		void			SetItem(TItemPos Cell, LPITEM item, bool bWereMine = false);
		LPITEM			GetItem(TItemPos Cell) const;
		LPITEM			GetInventoryItem(uint16_t wCell) const;
		bool			IsEmptyItemGrid(TItemPos Cell, uint8_t size, int32_t iExceptionCell = -1) const;

		void			SetWear(uint8_t bCell, LPITEM item);
		LPITEM			GetWear(uint8_t bCell) const;

		void			UseSilkBotary(void);

		void			UseSilkBotaryReal(const TPacketMyshopPricelistHeader* p);

		bool			UseItemEx(LPITEM item, TItemPos DestCell);
		bool			UseItem(TItemPos Cell, TItemPos DestCell = NPOS);

		bool			IsRefineThroughGuild() const;
		CGuild *		GetRefineGuild() const;
		int32_t				ComputeRefineFee(int32_t iCost, int32_t iMultiply = 5) const;
		void			PayRefineFee(int32_t iTotalMoney);
		void			SetRefineNPC(LPCHARACTER ch);

		bool			RefineItem(LPITEM pkItem, LPITEM pkTarget);
		
		
		bool			DropItem(TItemPos Cell,  uint8_t bCount=0);
		bool			DestroyItem(TItemPos Cell, uint8_t bCount);
		bool			GiveRecallItem(LPITEM item);
		void			ProcessRecallItem(LPITEM item);

		void			EffectPacket(int32_t enumEffectType);
		void			SpecificEffectPacket(const char filename[128]);

		bool			DoRefine(LPITEM item, bool bMoneyOnly = false);

		bool			DoRefineWithScroll(LPITEM item);
		bool			RefineInformation(uint8_t bCell, uint8_t bType, int32_t iAdditionalCell = -1);

		void			SetRefineMode(int32_t iAdditionalCell = -1);
		void			ClearRefineMode();

		bool			GiveItem(LPCHARACTER victim, TItemPos Cell);
		bool			CanReceiveItem(LPCHARACTER from, LPITEM item) const;
		void			ReceiveItem(LPCHARACTER from, LPITEM item);
		bool			GiveItemFromSpecialItemGroup(uint32_t dwGroupNum, std::vector <uint32_t> &dwItemVnums, 
							std::vector <uint32_t> &dwItemCounts, std::vector <LPITEM> &item_gets, int32_t &count);

		bool			MoveItem(TItemPos pos, TItemPos change_pos, uint8_t num);
		bool			PickupItem(uint32_t vid);
		bool			EquipItem(LPITEM item, int32_t iCandidateCell = -1);
		bool			UnequipItem(LPITEM item);

		bool			CanEquipNow(const LPITEM item, const TItemPos& srcCell = NPOS, const TItemPos& destCell = NPOS);

		bool			CanUnequipNow(const LPITEM item, const TItemPos& srcCell = NPOS, const TItemPos& destCell = NPOS);

		bool			SwapItem(uint8_t bCell, uint8_t bDestCell);
		LPITEM			AutoGiveItem(uint32_t dwItemVnum, uint8_t bCount=1, int32_t iRarePct = -1, bool bMsg = true);
		void			AutoGiveItem(LPITEM item, bool longOwnerShip = false);
		
		int32_t				GetEmptyInventory(uint8_t size) const;
		int32_t				GetEmptyDragonSoulInventory(LPITEM pItem) const;
		void			CopyDragonSoulItemGrid(std::vector<uint16_t>& vDragonSoulItemGrid) const;

		int32_t				CountEmptyInventory() const;

		int32_t				CountSpecifyItem(uint32_t vnum) const;
		void			RemoveSpecifyItem(uint32_t vnum, uint32_t count = 1);
		bool			RemoveSpecifyItems(std::set<uint32_t> _ilist, int32_t count);
		LPITEM			FindSpecifyItem(uint32_t vnum) const;
		LPITEM			FindItemByID(uint32_t id) const;

		int32_t				CountSpecifyTypeItem(uint8_t type) const;
		void			RemoveSpecifyTypeItem(uint8_t type, uint32_t count = 1);

		bool			IsEquipUniqueItem(uint32_t dwItemVnum) const;

		bool			IsEquipUniqueGroup(uint32_t dwGroupVnum) const;

		void			SendEquipment(LPCHARACTER ch);

	protected:
		void			SendMyShopPriceListCmd(uint32_t dwItemVnum, int64_t dwItemPrice);

		bool			m_bNoOpenedShop;	

		bool			m_bItemLoaded;
		int32_t				m_iRefineAdditionalCell;
		bool			m_bUnderRefine;
		uint32_t			m_dwRefineNPCVID;

	public:

#ifdef __GAYA__
		int32_t				GetGaya() const		{ return m_points.gaya;	}
		void			SetGaya(int32_t gaya)	{ m_points.gaya = gaya;	}
#endif

#ifdef ENABLE_CHEQUE_SYSTEM
		int32_t				GetCheque() const		{ return m_points.cheque;	}
		void			SetCheque(int32_t cheque)	{ m_points.cheque = cheque;	}
		void			GiveCheque(int32_t iAmount);
		bool			DropCheque(int32_t cheque);
#endif
		
		int64_t		GetGold() const		{ return m_points.gold;	}
		void			SetGold(int64_t gold)	{ m_points.gold = gold;	}
		bool			DropGold(int64_t gold);
		int64_t		GetAllowedGold() const;
		void			GiveGold(int64_t iAmount);


#ifdef ENABLE_EXTEND_INVEN_SYSTEM
		int32_t				Inven_Point() const			{ return m_points.envanter; }
		int32_t				Inventory_Size() const			{ return INVENTORY_OPEN_PAGE_SIZE + (INVENTORY_WIDTH*Inven_Point()); }
		void			Set_Inventory_Point(int32_t black)	{ m_points.envanter = black; }
		bool            Update_Inven();
#endif


	public:
		void			SetShop(LPSHOP pkShop);
		LPSHOP			GetShop() const { return m_pkShop; }
		void			ShopPacket(uint8_t bSubHeader);

		void			SetShopOwner(LPCHARACTER ch) { m_pkChrShopOwner = ch; }
		LPCHARACTER		GetShopOwner() const { return m_pkChrShopOwner;}

		void			OpenMyShop(const char * c_pszSign, TShopItemTable * pTable, uint8_t bItemCount);
		LPSHOP			GetMyShop() const { return m_pkMyShop; }
		void			CloseMyShop();

	protected:

		LPSHOP			m_pkShop;
		LPSHOP			m_pkMyShop;
		std::string		m_stShopSign;
		LPCHARACTER		m_pkChrShopOwner;

	public:
		bool			ExchangeStart(LPCHARACTER victim);
		void			SetExchange(CExchange * pkExchange);
		CExchange *		GetExchange() const	{ return m_pkExchange;	}

	protected:
		CExchange *		m_pkExchange;

	public:
		struct TBattleInfo
		{
			int32_t iTotalDamage;
			int32_t iAggro;

			TBattleInfo(int32_t iTot, int32_t iAggr)
				: iTotalDamage(iTot), iAggro(iAggr)
				{}
		};
		typedef std::map<VID, TBattleInfo>	TDamageMap;

		typedef struct SAttackLog
		{
			uint32_t	dwVID;
			uint32_t	dwTime;
		} AttackLog;

		bool				Damage(LPCHARACTER pAttacker, int32_t dam, EDamageType type = DAMAGE_TYPE_NORMAL);
		bool				__Profile__Damage(LPCHARACTER pAttacker, int32_t dam, EDamageType type = DAMAGE_TYPE_NORMAL);
		void				DeathPenalty(uint8_t bExpLossPercent);
		void				ReviveInvisible(int32_t iDur);

		bool				Attack(LPCHARACTER pkVictim, uint8_t bType = 0);
		bool				IsAlive() const		{ return m_pointsInstant.position == POS_DEAD ? false : true; }
		bool				CanFight() const;

		bool				CanBeginFight() const;
		void				BeginFight(LPCHARACTER pkVictim);

		bool				CounterAttack(LPCHARACTER pkChr);

		bool				IsStun() const;
		void				Stun();
		bool				IsDead() const;
		void				Dead(LPCHARACTER pkKiller = NULL, bool bImmediateDead=false);
		
#ifdef NEW_PET_SYSTEM
		void				SetImmortal(int32_t st) { m_stImmortalSt = st; };
		bool				IsImmortal() { return 1 == m_stImmortalSt; };
		void				SetNewPetSkillCD(int32_t s, uint32_t time) { m_newpetskillcd[s] = time; };
		uint32_t				GetNewPetSkillCD(int32_t s) { return m_newpetskillcd[s]; };
#endif

		void				Reward(bool bItemDrop);
		void				RewardGold(LPCHARACTER pkAttacker);

		bool				Shoot(uint8_t bType);
		void				FlyTarget(uint32_t dwTargetVID, int32_t x, int32_t y, uint8_t bHeader);

		void				ForgetMyAttacker();
		void				AggregateMonster();
		void				AttractRanger();
		void				PullMonster();

		int32_t					GetArrowAndBow(LPITEM * ppkBow, LPITEM * ppkArrow, int32_t iArrowCount = 1);
		void				UseArrow(LPITEM pkArrow, uint32_t dwArrowCount);

		void				AttackedByPoison(LPCHARACTER pkAttacker);
		void				RemovePoison();

		void				AttackedByFire(LPCHARACTER pkAttacker, int32_t amount, int32_t count);
		void				RemoveFire();

		void				UpdateAlignment(int32_t iAmount);
		int32_t					GetAlignment() const;

		int32_t					GetRealAlignment() const;
		void				ShowAlignment(bool bShow);

		void				SetKillerMode(bool bOn);
		bool				IsKillerMode() const;
		void				UpdateKillerMode();

		uint8_t				GetPKMode() const;
		void				SetPKMode(uint8_t bPKMode);

		void				ItemDropPenalty(LPCHARACTER pkKiller);

		void				UpdateAggrPoint(LPCHARACTER ch, EDamageType type, int32_t dam);

	public:
		void SetComboSequence(uint8_t seq);
		uint8_t GetComboSequence() const;

		void SetLastComboTime(uint32_t time);
		uint32_t GetLastComboTime() const;

		int32_t GetValidComboInterval() const;
		void SetValidComboInterval(int32_t interval);

		uint8_t GetComboIndex() const;

		void IncreaseComboHackCount(int32_t k = 1);
		void ResetComboHackCount();
		void SkipComboAttackByTime(int32_t interval);

		uint32_t GetSkipComboAttackByTime() const;

		int32_t GetFishHackCount();
		void UpdateFishHackCount();
		void ResetFishHackCount();
		void SetLastFishTime(int32_t time);
		int32_t GetLastFishTime();

	protected:
		uint8_t m_bComboSequence;
		uint32_t m_dwLastComboTime;
		int32_t m_iValidComboInterval;
		uint8_t m_bComboIndex;
		int32_t m_iComboHackCount;
		uint32_t m_dwSkipComboAttackByTime;
		int32_t m_iFishHackCount;
		int32_t m_iLastFishTime;

	protected:
		void				UpdateAggrPointEx(LPCHARACTER ch, EDamageType type, int32_t dam, TBattleInfo & info);
		void				ChangeVictimByAggro(int32_t iNewAggro, LPCHARACTER pNewVictim);

		uint32_t				m_dwFlyTargetID;
		std::vector<uint32_t>	m_vec_dwFlyTargets;
		TDamageMap			m_map_kDamage;
		uint32_t				m_dwKillerPID;

		int32_t					m_iAlignment;
		int32_t					m_iRealAlignment;
		int32_t					m_iKillerModePulse;
		uint8_t				m_bPKMode;

		uint32_t				m_dwLastVictimSetTime;
		int32_t					m_iMaxAggro;

	public:
		void				SetStone(LPCHARACTER pkChrStone);
		void				ClearStone();
		void				DetermineDropMetinStone();
		uint32_t				GetDropMetinStoneVnum() const { return m_dwDropMetinStone; }
		uint8_t				GetDropMetinStonePct() const { return m_bDropMetinStonePct; }

	protected:
		LPCHARACTER			m_pkChrStone;
		CHARACTER_SET		m_set_pkChrSpawnedBy;
		uint32_t				m_dwDropMetinStone;
		uint8_t				m_bDropMetinStonePct;


	public:
		enum
		{
			SKILL_UP_BY_POINT,
			SKILL_UP_BY_BOOK,
			SKILL_UP_BY_TRAIN,
			SKILL_UP_BY_QUEST,
		};

		void				SkillLevelPacket();
#ifdef __7AND8TH_SKILLS__
		bool				SkillCanUp(uint32_t dwVnum);
#endif		
		void				SkillLevelUp(uint32_t dwVnum, uint8_t bMethod = SKILL_UP_BY_POINT);
		bool				SkillLevelDown(uint32_t dwVnum);

		bool				UseSkill(uint32_t dwVnum, LPCHARACTER pkVictim, bool bUseGrandMaster = true);
		void				ResetSkill();
		void				SetSkillLevel(uint32_t dwVnum, uint8_t bLev);
		int32_t					GetUsedSkillMasterType(uint32_t dwVnum);

		bool				IsLearnableSkill(uint32_t dwSkillVnum) const;

		bool				CheckSkillHitCount(const uint8_t SkillID, const VID dwTargetVID);
		bool				CanUseSkill(uint32_t dwSkillVnum) const;
		bool				IsUsableSkillMotion(uint32_t dwMotionIndex) const;
		int32_t					GetSkillLevel(uint32_t dwVnum) const;
		int32_t					GetSkillMasterType(uint32_t dwVnum) const;
		int32_t					GetSkillPower(uint32_t dwVnum, uint8_t bLevel = 0) const;

		int32_t				GetSkillNextReadTime(uint32_t dwVnum) const;
		void				SetSkillNextReadTime(uint32_t dwVnum, int32_t time);
		void				SkillLearnWaitMoreTimeMessage(uint32_t dwVnum);

		void				ComputePassiveSkill(uint32_t dwVnum);

#ifdef ENABLE_NEW_GYEONGGONG_SKILL
		int32_t					ComputeGyeongGongSkill(uint32_t dwVnum, LPCHARACTER pkVictim, uint8_t bSkillLevel = 0);
#endif
		int32_t					ComputeSkill(uint32_t dwVnum, LPCHARACTER pkVictim, uint8_t bSkillLevel = 0);
		int32_t					ComputeSkillParty(uint32_t dwVnum, LPCHARACTER pkVictim, uint8_t bSkillLevel = 0);
		int32_t					ComputeSkillAtPosition(uint32_t dwVnum, const PIXEL_POSITION& posTarget, uint8_t bSkillLevel = 0);
		void				ComputeSkillPoints();

		void				SetSkillGroup(uint8_t bSkillGroup); 
		uint8_t				GetSkillGroup() const		{ return m_points.skill_group; }

		int32_t					ComputeCooltime(int32_t time);

		void				GiveRandomSkillBook();

		void				DisableCooltime();
		bool				LearnSkillByBook(uint32_t dwSkillVnum, uint8_t bProb = 0);
		bool				LearnGrandMasterSkill(uint32_t dwSkillVnum);

	private:
		bool				m_bDisableCooltime;

#ifdef ENABLE_SORT_INVEN
		uint32_t				m_dwLastSortTime;
#endif

		uint32_t				m_dwLastSkillTime;

	public:
		bool				HasMobSkill() const;
		uint32_t				CountMobSkill() const;
		const TMobSkillInfo * GetMobSkill(uint32_t idx) const;
		bool				CanUseMobSkill(uint32_t idx) const;
		bool				UseMobSkill(uint32_t idx);
		void				ResetMobSkillCooltime();
	protected:
		uint32_t				m_adwMobSkillCooltime[MOB_SKILL_MAX_NUM];

	public:
		void				StartMuyeongEvent();
		void				StopMuyeongEvent();
#ifdef ENABLE_NEW_GYEONGGONG_SKILL
		void				StartGyeongGongEvent();
		void				StopGyeongGongEvent();
#endif

	private:
		LPEVENT				m_pkMuyeongEvent;
#ifdef ENABLE_NEW_GYEONGGONG_SKILL
		LPEVENT				m_pkGyeongGongEvent;
#endif

	public:
		int32_t					GetChainLightningIndex() const { return m_iChainLightingIndex; }
		void				IncChainLightningIndex() { ++m_iChainLightingIndex; }
		void				AddChainLightningExcept(LPCHARACTER ch) { m_setExceptChainLighting.insert(ch); }
		void				ResetChainLightningIndex() { m_iChainLightingIndex = 0; m_setExceptChainLighting.clear(); }
		int32_t					GetChainLightningMaxCount() const;
		const CHARACTER_SET& GetChainLightingExcept() const { return m_setExceptChainLighting; }

	private:
		int32_t					m_iChainLightingIndex;
		CHARACTER_SET m_setExceptChainLighting;

	public:
		void				SetAffectedEunhyung();
		void				ClearAffectedEunhyung() { m_dwAffectedEunhyungLevel = 0; }
		bool				GetAffectedEunhyung() const { return m_dwAffectedEunhyungLevel; }

	private:
		uint32_t				m_dwAffectedEunhyungLevel;

	protected:
		TPlayerSkill*					m_pSkillLevels;
		boost::unordered_map<uint8_t, int32_t>		m_SkillDamageBonus;
		std::map<int32_t, TSkillUseInfo>	m_SkillUseInfo;

	public:
		void			AssignTriggers(const TMobTable * table);
		LPCHARACTER		GetVictim() const;
		void			SetVictim(LPCHARACTER pkVictim);
		LPCHARACTER		GetNearestVictim(LPCHARACTER pkChr);
		LPCHARACTER		GetProtege() const;

		bool			Follow(LPCHARACTER pkChr, float fMinimumDistance = 150.0f);
		bool			Return();
		bool			IsGuardNPC() const;
		bool			IsChangeAttackPosition(LPCHARACTER target) const;
		void			ResetChangeAttackPositionTime() { m_dwLastChangeAttackPositionTime = get_dword_time() - AI_CHANGE_ATTACK_POISITION_TIME_NEAR;}
		void			SetChangeAttackPositionTime() { m_dwLastChangeAttackPositionTime = get_dword_time();}

		bool			OnIdle();

		void			OnAttack(LPCHARACTER pkChrAttacker);
		void			OnClick(LPCHARACTER pkChrCauser);

		VID				m_kVIDVictim;

	protected:
		uint32_t			m_dwLastChangeAttackPositionTime;
		CTrigger		m_triggerOnClick;

	protected:
		LPCHARACTER				m_pkChrTarget;
		CHARACTER_SET	m_set_pkChrTargetedBy;

	public:
		void				SetTarget(LPCHARACTER pkChrTarget);
		void				BroadcastTargetPacket();
		void				ClearTarget();
		void				CheckTarget();
		LPCHARACTER			GetTarget() const { return m_pkChrTarget; }

	public:
		int32_t					GetSafeboxSize() const;
		void				QuerySafeboxSize();
		void				SetSafeboxSize(int32_t size);

		CSafebox *			GetSafebox() const;
		void				LoadSafebox(int32_t iSize, uint32_t dwGold, int32_t iItemCount, TPlayerItem * pItems);
		void				ChangeSafeboxSize(uint8_t bSize);
		void				CloseSafebox();

		void				ReqSafeboxLoad(const char* pszPassword);

		void				CancelSafeboxLoad( void ) { m_bOpeningSafebox = false; }

		void				SetMallLoadTime(int32_t t) { m_iMallLoadTime = t; }
		int32_t					GetMallLoadTime() const { return m_iMallLoadTime; }

		CSafebox *			GetMall() const;
		void				LoadMall(int32_t iItemCount, TPlayerItem * pItems);
		void				CloseMall();

		void				SetSafeboxOpenPosition();
		float				GetDistanceFromSafeboxOpen() const;

	protected:
		CSafebox *			m_pkSafebox;
		int32_t					m_iSafeboxSize;
		int32_t					m_iSafeboxLoadTime;
		bool				m_bOpeningSafebox;

		CSafebox *			m_pkMall;
		int32_t					m_iMallLoadTime;

		PIXEL_POSITION		m_posSafeboxOpen;

	public:
		void				MountVnum(uint32_t vnum);
		uint32_t				GetMountVnum() const { return m_dwMountVnum; }
		uint32_t				GetLastMountTime() const { return m_dwMountTime; }

		bool				CanUseHorseSkill();

		virtual	void		SetHorseLevel(int32_t iLevel);

		virtual	bool		StartRiding();
		virtual	bool		StopRiding();

		virtual	uint32_t		GetMyHorseVnum() const;

		virtual	void		HorseDie();
		virtual bool		ReviveHorse();

		virtual void		SendHorseInfo();
		virtual	void		ClearHorseInfo();

		void				HorseSummon(bool bSummon, bool bFromFar = false, uint32_t dwVnum = 0, const char* name = 0);

		LPCHARACTER			GetHorse() const			{ return m_chHorse; }
		LPCHARACTER			GetRider() const; 
		void				SetRider(LPCHARACTER ch);

		bool				IsRiding() const;

#ifdef __PET_SYSTEM__
	public:
		CPetSystem*			GetPetSystem()				{ return m_petSystem; }

	protected:
		CPetSystem*			m_petSystem;

	public:
#endif

#ifdef NEW_PET_SYSTEM
	public:
		CNewPetSystem*			GetNewPetSystem() { return m_newpetSystem; }

	protected:
		CNewPetSystem*			m_newpetSystem;

	public:
#endif

#ifdef ENABLE_MOUNT_COSTUME_SYSTEM
	public:
		CMountSystem*		GetMountSystem() { return m_mountSystem; }
		
		void 				MountSummon(LPITEM mountItem);
		void 				MountUnsummon(LPITEM mountItem);
		void 				CheckMount();
		bool 				IsRidingMount();
	protected:
		CMountSystem*		m_mountSystem;
#endif

	protected:
		LPCHARACTER			m_chHorse;
		LPCHARACTER			m_chRider;

		uint32_t				m_dwMountVnum;
		uint32_t				m_dwMountTime;

		uint8_t				m_bSendHorseLevel;
		uint8_t				m_bSendHorseHealthGrade;
		uint8_t				m_bSendHorseStaminaGrade;

	public:
		void				DetailLog() { m_bDetailLog = !m_bDetailLog; }
		void				ToggleMonsterLog();
		void				MonsterLog(const char* format, ...);
	private:
		bool				m_bDetailLog;
		bool				m_bMonsterLog;

	public:
		void 				SetEmpire(uint8_t bEmpire);
		uint8_t				GetEmpire() const { return m_bEmpire; }

	protected:
		uint8_t				m_bEmpire;

	public:
		void				SetRegen(LPREGEN pkRegen);

	protected:
		PIXEL_POSITION			m_posRegen;
		float				m_fRegenAngle;
		LPREGEN				m_pkRegen;
		uint32_t				regen_id_;

	public:
		bool				CannotMoveByAffect() const;
		bool				IsImmune(uint32_t dwImmuneFlag);
		void				SetImmuneFlag(uint32_t dw) { m_pointsInstant.dwImmuneFlag = dw; }

	protected:
		void				ApplyMobAttribute(const TMobTable* table);

	public:
		void				SetQuestNPCID(uint32_t vid);
		uint32_t				GetQuestNPCID() const { return m_dwQuestNPCVID; }
		LPCHARACTER			GetQuestNPC() const;

		void				SetQuestItemPtr(LPITEM item);
		void				ClearQuestItemPtr();
		LPITEM				GetQuestItemPtr() const;

		void				SetQuestBy(uint32_t dwQuestVnum)	{ m_dwQuestByVnum = dwQuestVnum; }
		uint32_t				GetQuestBy() const			{ return m_dwQuestByVnum; }

		int32_t					GetQuestFlag(const std::string& flag) const;
		void				SetQuestFlag(const std::string& flag, int32_t value);

		void				ConfirmWithMsg(const char* szMsg, int32_t iTimeout, uint32_t dwRequestPID);

	private:
		uint32_t				m_dwQuestNPCVID;
		uint32_t				m_dwQuestByVnum;
		LPITEM				m_pQuestItem;

	public:
		bool				StartStateMachine(int32_t iPulse = 1);
		void				StopStateMachine();
		void				UpdateStateMachine(uint32_t dwPulse);
		void				SetNextStatePulse(int32_t iPulseNext);

		void				UpdateCharacter(uint32_t dwPulse);

	protected:
		uint32_t				m_dwNextStatePulse;

	public:
		LPCHARACTER			GetMarryPartner() const;
		void				SetMarryPartner(LPCHARACTER ch);
		int32_t					GetMarriageBonus(uint32_t dwItemVnum, bool bSum = true);

		void				SetWeddingMap(marriage::WeddingMap* pMap);
		marriage::WeddingMap* GetWeddingMap() const { return m_pWeddingMap; }

	private:
		marriage::WeddingMap* m_pWeddingMap;
		LPCHARACTER			m_pkChrMarried;

	public:
		void				StartWarpNPCEvent();
		void                ChannelSwitch(int32_t new_ch);

	public:
		void				StartSaveEvent();
		void				StartRecoveryEvent();
		void				StartCheckSpeedHackEvent();
		void				StartDestroyWhenIdleEvent();

		LPEVENT				m_pkDeadEvent;
		LPEVENT				m_pkStunEvent;
		LPEVENT				m_pkSaveEvent;
		LPEVENT				m_pkRecoveryEvent;
		LPEVENT				m_pkTimedEvent;
		LPEVENT				m_pkFishingEvent;
		LPEVENT				m_pkAffectEvent;
		LPEVENT				m_pkPoisonEvent;
		LPEVENT				m_pkFireEvent;
		LPEVENT				m_pkWarpNPCEvent;
		LPEVENT				m_pkMiningEvent;
		LPEVENT				m_pkWarpEvent;
		LPEVENT				m_pkCheckSpeedHackEvent;
		LPEVENT				m_pkDestroyWhenIdleEvent;
		LPEVENT				m_pkPetSystemUpdateEvent;
		
#ifdef NEW_PET_SYSTEM
		LPEVENT				m_pkNewPetSystemUpdateEvent;
		LPEVENT				m_pkNewPetSystemExpireEvent;
#endif

		bool IsWarping() const { return m_pkWarpEvent ? true : false; }

		bool				m_bHasPoisoned;

		const CMob *		m_pkMobData;
		CMobInstance *		m_pkMobInst;

		std::map<int32_t, LPEVENT> m_mapMobSkillEvent;

		friend struct FuncSplashDamage;
		friend struct FuncSplashAffect;
		friend class CFuncShoot;

	public:
		int32_t				GetPremiumRemainSeconds(uint8_t bType) const;

	private:
		int32_t				m_aiPremiumTimes[PREMIUM_MAX_NUM];

		static const uint32_t		msc_dwDefaultChangeItemAttrCycle;
		static const char		msc_szLastChangeItemAttrFlag[];
		static const char		msc_szChangeItemAttrCycleFlag[];

	private :
		bool m_isinPCBang;

	public :
		bool SetPCBang(bool flag) { m_isinPCBang = flag; return m_isinPCBang; }
		bool IsPCBang() const { return m_isinPCBang; }

	public :
		bool ItemProcess_Hair(LPITEM item, int32_t iDestCell);

	public :
		void ClearSkill();
		void ClearSubSkill();

		bool ResetOneSkill(uint32_t dwVnum);

	private :
		void SendDamagePacket(LPCHARACTER pAttacker, int32_t Damage, uint8_t DamageFlag);

	private :
		CArena *m_pArena;
		bool m_ArenaObserver;
		int32_t m_nPotionLimit;

	public :
		void 	SetArena(CArena* pArena) { m_pArena = pArena; }
		void	SetArenaObserverMode(bool flag) { m_ArenaObserver = flag; }

		CArena* GetArena() const { return m_pArena; }
		bool	GetArenaObserverMode() const { return m_ArenaObserver; }

		void	SetPotionLimit(int32_t count) { m_nPotionLimit = count; }
		int32_t		GetPotionLimit() const { return m_nPotionLimit; }
	

		
	public:
		bool	IsOpenSafebox() const { return m_isOpenSafebox ? true : false; }
		void 	SetOpenSafebox(bool b) { m_isOpenSafebox = b; }

		int32_t		GetSafeboxLoadTime() const { return m_iSafeboxLoadTime; }
		void	SetSafeboxLoadTime() { m_iSafeboxLoadTime = thecore_pulse(); }
	
	private:
		bool	m_isOpenSafebox;

	public:
		int32_t		GetSkillPowerByLevel(int32_t level, bool bMob = false) const;

		int32_t		GetRefineTime() const { return m_iRefineTime; }
		void	SetRefineTime() { m_iRefineTime = thecore_pulse(); } 
		int32_t		m_iRefineTime;

		int32_t 	GetUseSeedOrMoonBottleTime() const { return m_iSeedTime; }
		void  	SetUseSeedOrMoonBottleTime() { m_iSeedTime = thecore_pulse(); }
		int32_t 	m_iSeedTime;

		int32_t		GetExchangeTime() const { return m_iExchangeTime; }
		void	SetExchangeTime() { m_iExchangeTime = thecore_pulse(); }
		int32_t		m_iExchangeTime;
		
		int32_t 	m_iMyShopTime;
		int32_t		GetMyShopTime() const	{ return m_iMyShopTime; }
		void	SetMyShopTime() { m_iMyShopTime = thecore_pulse(); }

		bool	IsHack(bool bSendMsg = true, bool bCheckShopOwner = true, int32_t limittime = g_nPortalLimitTime);

		BOOL	IsMonarch() const;

		void Say(const std::string & s);

		enum MONARCH_COOLTIME
		{
			MC_HEAL = 10,
			MC_WARP	= 60,
			MC_TRANSFER = 60,
			MC_TAX = (60 * 60 * 24 * 7),
			MC_SUMMON = (60 * 60),
		};

		enum MONARCH_INDEX
		{ 
			MI_HEAL = 0,
			MI_WARP,
			MI_TRANSFER,
			MI_TAX,
			MI_SUMMON,
			MI_MAX
		};

		uint32_t m_dwMonarchCooltime[MI_MAX];
		uint32_t m_dwMonarchCooltimelimit[MI_MAX];

		void  InitMC();
		uint32_t GetMC(enum MONARCH_INDEX e) const;
		void SetMC(enum MONARCH_INDEX e);
		bool IsMCOK(enum MONARCH_INDEX e) const;
		uint32_t GetMCL(enum MONARCH_INDEX e) const;
		uint32_t GetMCLTime(enum MONARCH_INDEX e) const;

	public:
		bool ItemProcess_Polymorph(LPITEM item);

		LPITEM*	GetCubeItem() { return m_pointsInstant.pCubeItems; }
		bool IsCubeOpen () const	{ return (m_pointsInstant.pCubeNpc?true:false); }
		void SetCubeNpc(LPCHARACTER npc)	{ m_pointsInstant.pCubeNpc = npc; }
		bool CanDoCube() const;

	public:
		bool IsSiegeNPC() const;

	private:
		e_overtime m_eOverTime;

	public:
		bool IsOverTime(e_overtime e) const { return (e == m_eOverTime); }
		void SetOverTime(e_overtime e) { m_eOverTime = e; }

	private:
		int32_t		m_deposit_pulse;

	public:
		void	UpdateDepositPulse();
		bool	CanDeposit() const;

	private:
		void	__OpenPrivateShop();

	public:
		struct AttackedLog
		{
			uint32_t 	dwPID;
			uint32_t	dwAttackedTime;
			
			AttackedLog() : dwPID(0), dwAttackedTime(0)
			{
			}
		};

		AttackLog	m_kAttackLog;
		AttackedLog m_AttackedLog;
		int32_t			m_speed_hack_count;

	private :
		std::string m_strNewName;

	public :
		const std::string GetNewName() const { return this->m_strNewName; }
		void SetNewName(const std::string name) { this->m_strNewName = name; }

	public :
		void GoHome();

	private :
		std::set<uint32_t>	m_known_guild;

	public :
		void SendGuildName(CGuild* pGuild);
		void SendGuildName(uint32_t dwGuildID);

	private :
		uint32_t m_dwLogOffInterval;

	public :
		uint32_t GetLogOffInterval() const { return m_dwLogOffInterval; }

	public:
		bool UnEquipSpecialRideUniqueItem ();

		bool CanWarp () const;

	private:
		uint32_t m_dwLastGoldDropTime;

	public:
		void StartHackShieldCheckCycle(int32_t seconds);
		void StopHackShieldCheckCycle();

		bool GetHackShieldCheckMode() const { return m_HackShieldCheckMode; }
		void SetHackShieldCheckMode(bool m) { m_HackShieldCheckMode = m; }

		LPEVENT m_HackShieldCheckEvent;

	private:
		bool	m_HackShieldCheckMode;

	public:
		void AutoRecoveryItemProcess (const EAffectTypes);

	public:
		void BuffOnAttr_AddBuffsFromItem(LPITEM pItem);
		void BuffOnAttr_RemoveBuffsFromItem(LPITEM pItem);

	private:
		void BuffOnAttr_ValueChange(uint8_t bType, uint8_t bOldValue, uint8_t bNewValue);
		void BuffOnAttr_ClearAll();

		typedef std::map <uint8_t, CBuffOnAttributes*> TMapBuffOnAttrs;
		TMapBuffOnAttrs m_map_buff_on_attrs;
	public:
		void SetArmada() { cannot_dead = true; }
		void ResetArmada() { cannot_dead = false; }
	private:
		bool cannot_dead;

#ifdef __PET_SYSTEM__
	private:
		bool m_bIsPet;
	public:
		void SetPet() { m_bIsPet = true; }
		bool IsPet() { return m_bIsPet; }
#endif

#ifdef NEW_ICEDAMAGE_SYSTEM
	private:
		uint32_t m_dwNDRFlag;
		std::set<uint32_t> m_setNDAFlag;
	public:
		const uint32_t GetNoDamageRaceFlag();
		void SetNoDamageRaceFlag(uint32_t dwRaceFlag);
		void UnsetNoDamageRaceFlag(uint32_t dwRaceFlag);
		void ResetNoDamageRaceFlag();
		const std::set<uint32_t>& GetNoDamageAffectFlag();
		void SetNoDamageAffectFlag(uint32_t dwAffectFlag);
		void UnsetNoDamageAffectFlag(uint32_t dwAffectFlag);
		void ResetNoDamageAffectFlag();
#endif

#ifdef NEW_PET_SYSTEM
	private:
		bool m_bIsNewPet;
		int32_t m_eggvid;
	public:
		void SetNewPet() { m_bIsNewPet = true; }
		bool IsNewPet() const { return m_bIsNewPet ? true : false; }
		void SetEggVid(int32_t vid) { m_eggvid = vid; }
		int32_t GetEggVid() { return m_eggvid; }

#endif

#ifdef ENABLE_MOUNT_COSTUME_SYSTEM
	private:
		bool m_bIsMount;
	public:
		void SetMount() { m_bIsMount = true; }
		bool IsMount() { return m_bIsMount; }
#endif

	private:
		float m_fAttMul;
		float m_fDamMul;
	public:
		float GetAttMul() { return this->m_fAttMul; }
		void SetAttMul(float newAttMul) {this->m_fAttMul = newAttMul; }
		float GetDamMul() { return this->m_fDamMul; }
		void SetDamMul(float newDamMul) {this->m_fDamMul = newDamMul; }

	private:
		bool IsValidItemPosition(TItemPos Pos) const;

	private:
		uint32_t itemAward_vnum;
		char		 itemAward_cmd[20];
	public:
		uint32_t GetItemAward_vnum() { return itemAward_vnum; }
		char*		 GetItemAward_cmd() { return itemAward_cmd;	  }
		void		 SetItemAward_vnum(uint32_t vnum) { itemAward_vnum = vnum; }
		void		 SetItemAward_cmd(char* cmd) { strcpy(itemAward_cmd,cmd); }

	public:
		void	DragonSoul_Initialize();

		bool	DragonSoul_IsQualified() const;
		void	DragonSoul_GiveQualification();

		int32_t		DragonSoul_GetActiveDeck() const;
		bool	DragonSoul_IsDeckActivated() const;
		bool	DragonSoul_ActivateDeck(int32_t deck_idx);

		void	DragonSoul_DeactivateAll();
		void	DragonSoul_CleanUp();
	public:
		bool		DragonSoul_RefineWindow_Open(LPENTITY pEntity);
		bool		DragonSoul_RefineWindow_Close();
		LPENTITY	DragonSoul_RefineWindow_GetOpener() { return  m_pointsInstant.m_pDragonSoulRefineWindowOpener; }
		bool		DragonSoul_RefineWindow_CanRefine();

	private:
		timeval		m_tvLastSyncTime;
		int32_t			m_iSyncHackCount;
	public:
		void			SetLastSyncTime(const timeval &tv) { memcpy(&m_tvLastSyncTime, &tv, sizeof(timeval)); }
		const timeval&	GetLastSyncTime() { return m_tvLastSyncTime; }
		void			SetSyncHackCount(int32_t iCount) { m_iSyncHackCount = iCount;}
		int32_t				GetSyncHackCount() { return m_iSyncHackCount; }



#ifdef __GAYA__
	public:
		struct Gaya_Shop_Values
		{
			int32_t		value_1;
			int32_t		value_2;
			int32_t 	value_3;
			int32_t 	value_4;
			int32_t 	value_5;
			int32_t 	value_6;
			bool operator == (const Gaya_Shop_Values& b)
			{
				return (this->value_1 == b.value_1) && (this->value_2 == b.value_2) && 
					   (this->value_3 == b.value_3) && (this->value_4 == b.value_4) &&
					   (this->value_5 == b.value_5) && (this->value_6 == b.value_6);
			}
		};

		struct Gaya_Load_Values
		{

			uint32_t	items;
			uint32_t	gaya;
			uint32_t	count;
			uint32_t	glimmerstone;
			uint32_t	gaya_expansion;
			uint32_t	gaya_refresh;
			uint32_t	glimmerstone_count;
			uint32_t 	gaya_expansion_count;
			uint32_t 	gaya_refresh_count;
			uint32_t	grade_stone;
			uint32_t	give_gaya;
			uint32_t	prob_gaya;
			uint32_t	cost_gaya_yang;
		};

		bool CheckItemsFull();
		void UpdateItemsGayaMarker0();
		void UpdateItemsGayaMarker(); 
		void InfoGayaMarker();
		void ClearGayaMarket();
		bool CheckSlotGayaMarket(int32_t slot);
		void UpdateSlotGayaMarket(int32_t slot);
		void BuyItemsGayaMarket(int32_t slot);
		void RefreshItemsGayaMarket();
		void CraftGayaItems(int32_t slot);
		void MarketGayaItems(int32_t slot);
		void RefreshGayaItems();
		void lOAD_GAYA();
		int32_t	GetGayaState(const std::string& state) const;
		void SetGayaState(const std::string& state, int32_t szValue);
		void StartCheckTimeMarket();
		void StartCheckTimeMarketLogin();

	private:
		std::vector<Gaya_Shop_Values> info_items;
		std::vector<Gaya_Shop_Values> info_slots;	
		std::vector<Gaya_Load_Values> load_gaya_items;
		Gaya_Load_Values	load_gaya_values;
		LPEVENT	GayaUpdateTime;
#endif



	#ifdef __ACCE_SYSTEM__
	protected:
		bool	m_bAcceCombination, m_bAcceAbsorption;
	
	public:
		bool	isAcceOpened(bool bCombination) {return bCombination ? m_bAcceCombination : m_bAcceAbsorption;}
		void	OpenAcce(bool bCombination);
		void	CloseAcce();
		void	ClearAcceMaterials();
		bool	CleanAcceAttr(LPITEM pkItem, LPITEM pkTarget);
		LPITEM*	GetAcceMaterials() {return m_pointsInstant.pAcceMaterials;}
		bool	AcceIsSameGrade(int32_t lGrade);
		uint32_t	GetAcceCombinePrice(int32_t lGrade);
		void	GetAcceCombineResult(uint32_t & dwItemVnum, uint32_t & dwMinAbs, uint32_t & dwMaxAbs);
		uint8_t	CheckEmptyMaterialSlot();
		void	AddAcceMaterial(TItemPos tPos, uint8_t bPos);
		void	RemoveAcceMaterial(uint8_t bPos);
		uint8_t	CanRefineAcceMaterials();
		void	RefineAcceMaterials();
	#endif
	
};

ESex GET_SEX(LPCHARACTER ch);
