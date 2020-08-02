#pragma once

class CHARACTER;

struct SNewPetAbility{};

class CNewPetActor
{
public:
	enum ENewPetOptions
	{
		EPetOption_Followable		= 1 << 0,
		EPetOption_Mountable		= 1 << 1,
		EPetOption_Summonable		= 1 << 2,
		EPetOption_Combatable		= 1 << 3,		
	};

#ifdef ENABLE_NEW_PET_SYSTEM_FEED
public:
	void	ItemFeed(int32_t slot);
#endif

protected:
	friend class CNewPetSystem;

	CNewPetActor(LPCHARACTER owner, uint32_t vnum, uint32_t options = EPetOption_Followable | EPetOption_Summonable );

	virtual ~CNewPetActor();

	virtual bool	Update(uint32_t deltaTime);

protected:
	virtual bool	_UpdateFollowAI();
	virtual bool	_UpdatAloneActionAI(float fMinDist, float fMaxDist);

	

private:
	bool Follow(float fMinDistance = 50.f);

public:
	LPCHARACTER		GetCharacter()	const					{ return m_pkChar; }
	LPCHARACTER		GetOwner()	const						{ return m_pkOwner; }
	uint32_t			GetVID() const							{ return m_dwVID; }
	uint32_t			GetVnum() const							{ return m_dwVnum; }

	bool			HasOption(ENewPetOptions option) const		{ return m_dwOptions & option; }

	void			SetName(const char* petName);
	void			SetLevel(uint32_t level);

	bool			Mount();
	void			Unmount();

	uint32_t			Summon(const char* petName, LPITEM pSummonItem, bool bSpawnFar = false);
	void			Unsummon();

	bool			IsSummoned() const			{ return 0 != m_pkChar; }
	void			SetSummonItem (LPITEM pItem);

	uint32_t			GetSummonItemVID () { return m_dwSummonItemVID; }
	uint32_t			GetSummonItemID () { return m_dwSummonItemID; }
	uint32_t			GetEvolution() { return m_dwevolution; }
	uint32_t			GetLevel() { return m_dwlevel; }

	void			SetEvolution(int32_t lv);
	void			SetExp(uint32_t exp, int32_t mode);

	uint32_t			GetExp() { return m_dwexp; }
	uint32_t			GetExpI() { return m_dwexpitem; }
	int32_t				GetSkillCount();

	void			SetNextExp(int32_t nextExp);

	int32_t				GetNextExpFromMob() { return m_dwExpFromMob; }
	int32_t				GetNextExpFromItem() { return m_dwExpFromItem; }
	int32_t				GetLevelStep() { return m_dwlevelstep; }
	int32_t				GetPetType() { return m_dwPetType; }

	void			IncreasePetBonus();
	void			SetItemCube(int32_t pos, int32_t invpos);
	void			ItemCubeFeed(int32_t type);
	void			DoPetSkill(int32_t skillslot);
	void			UpdateTime();

	bool			ResetSkill(int32_t skill);
	bool			IncreasePetSkill(int32_t skill);
	bool			IncreasePetEvolution();

	void			GiveBuff();
	void			ClearBuff();

private:
	int32_t			m_dwlevelstep;
	int32_t			m_dwExpFromMob;
	int32_t			m_dwExpFromItem;
	int32_t			m_dwexpitem;
	int32_t			m_dwevolution;
	int32_t			m_dwTimePet;
	int32_t			m_dwslotimm;
	int32_t			m_dwPetType;

	uint32_t		m_dwImmTime;

	int32_t				m_dwpetslotitem[9];
	int32_t				m_dwskill[3];
	int32_t				m_dwskillslot[3];
	int32_t				m_dwbonuspet[3][2];
	uint32_t			m_dwVnum;
	uint32_t			m_dwVID;
	uint32_t			m_dwlevel;	
	uint32_t			m_dwexp;
	uint32_t			m_dwOptions;
	uint32_t			m_dwLastActionTime;
	uint32_t			m_dwSummonItemVID;
	uint32_t			m_dwSummonItemID;
	uint32_t			m_dwSummonItemVnum;

	uint32_t			m_dwduration;
	uint32_t			m_dwtduration;
	uint32_t			m_dwdurationYas;

	int16_t			m_originalMoveSpeed;

	std::string		m_name;

	LPCHARACTER		m_pkChar;
	LPCHARACTER		m_pkOwner;


};

class CNewPetSystem
{
public:
	typedef	boost::unordered_map<uint32_t,	CNewPetActor*>		TNewPetActorMap;

#ifdef ENABLE_NEW_PET_SYSTEM_FEED
	void	ItemFeed(int32_t slot);
#endif

public:
	CNewPetSystem(LPCHARACTER owner);
	virtual ~CNewPetSystem();

	CNewPetActor*	GetByVID(uint32_t vid) const;
	CNewPetActor*	GetByVnum(uint32_t vnum) const;

	bool		Update(uint32_t deltaTime);
	void		Destroy();

	uint32_t		CountSummoned() const;

public:
	void		SetUpdatePeriod(uint32_t ms);

	CNewPetActor*	Summon(uint32_t mobVnum, LPITEM pSummonItem, const char* petName, bool bSpawnFar, uint32_t options = CNewPetActor::EPetOption_Followable | CNewPetActor::EPetOption_Summonable);

	void		Unsummon(uint32_t mobVnum, bool bDeleteFromList = false);
	void		Unsummon(CNewPetActor* petActor, bool bDeleteFromList = false);

	CNewPetActor*	AddPet(uint32_t mobVnum, const char* petName, const SNewPetAbility& ability, uint32_t options = CNewPetActor::EPetOption_Followable | CNewPetActor::EPetOption_Summonable | CNewPetActor::EPetOption_Combatable);

	bool		ResetSkill(int32_t skill);
	bool		IncreasePetSkill(int32_t skill);
	bool		IncreasePetEvolution();	
	
	void		DeletePet(uint32_t mobVnum);
	void		DeletePet(CNewPetActor* petActor);
	void		RefreshBuff();
	bool		IsActivePet();

	uint32_t		GetNewPetITemID();

	void		SetExp(int32_t iExp, int32_t mode);

	int32_t			GetEvolution();
	int32_t			GetLevel();
	int32_t			GetExp();
	int32_t			GetLevelStep();;
	int32_t			GetPetType();

	void		SetItemCube(int32_t pos, int32_t invpos);
	void		ItemCubeFeed(int32_t type);
	void		DoPetSkill(int32_t skillslot);
	void		UpdateTime();

private:
	TNewPetActorMap	m_petActorMap;
	LPCHARACTER		m_pkOwner;
	uint32_t			m_dwUpdatePeriod;
	uint32_t			m_dwLastUpdateTime;
	LPEVENT			m_pkNewPetSystemUpdateEvent;
	LPEVENT			m_pkNewPetSystemExpireEvent;
};
