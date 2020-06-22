#include "stdafx.h"
#include "utils.h"
#include "vector.h"
#include "char.h"
#include "sectree_manager.h"
#include "char_manager.h"
#include "mob_manager.h"
#include "New_PetSystem.h"
#include "../../common/VnumHelper.h"
#include "packet.h"
#include "item_manager.h"
#include "item.h"
#include "db.h"

extern int32_t passes_per_sec;

EVENTINFO(newpetsystem_event_info)
{

	CNewPetSystem* pPetSystem;
};

EVENTINFO(newpetsystem_event_infoe)
{

	CNewPetSystem* pPetSystem;
};

EVENTFUNC(newpetsystem_update_event)
{

	newpetsystem_event_info* info = dynamic_cast<newpetsystem_event_info*>(event->info);

	if (info == NULL)
	{

		sys_err( "check_speedhack_event> <Factor> Null pointer" );
		return 0;
	}

	CNewPetSystem* pPetSystem = info->pPetSystem;

	if (NULL == pPetSystem)
	{

		return 0;
	}

	pPetSystem->Update(0);

	return PASSES_PER_SEC(1) / 4;
}

EVENTFUNC(newpetsystem_expire_event)
{
	newpetsystem_event_infoe* info = dynamic_cast<newpetsystem_event_infoe*>(event->info);
	if (info == NULL)
	{
		sys_err("check_speedhack_event> <Factor> Null pointer");
		return 0;
	}

	CNewPetSystem*	pPetSystem = info->pPetSystem;

	if (NULL == pPetSystem)
		return 0;


	pPetSystem->UpdateTime();
	return PASSES_PER_SEC(1);
}

const float PET_COUNT_LIMIT = 3;

CNewPetActor::CNewPetActor(LPCHARACTER owner, uint32_t vnum, uint32_t options)
{
	m_dwVnum = vnum;
	m_dwVID = 0;
	m_dwlevel = 1;
	m_dwlevelstep = 0;
	m_dwExpFromMob = 0;
	m_dwExpFromItem = 0;
	m_dwexp = 0;
	m_dwexpitem = 0;
	m_dwOptions = options;
	m_dwLastActionTime = 0;

	m_pkChar = 0;
	m_pkOwner = owner;

	m_originalMoveSpeed = 0;
	
	m_dwSummonItemVID = 0;
	m_dwSummonItemID = 0;
	m_dwSummonItemVnum = 0;

	m_dwevolution = 0;
	m_dwduration = 0;
	m_dwtduration = 0;

	m_dwdurationYas = 0;

	m_dwTimePet = 0;
	m_dwslotimm = 0;
	m_dwImmTime = 0;

	m_dwskill[0] = 0;
	m_dwskill[1] = 0;
	m_dwskill[2] = 0;

	for (int32_t s = 0; s < 9; ++s)
	{
		m_dwpetslotitem[s] = -1;
	}

	m_dwskillslot[0] = -1;
	m_dwskillslot[0] = -1;
	m_dwskillslot[0] = -1;

	for (int32_t x = 0; x < 3; ++x)
	{
		int32_t btype[3] = { 1, 54, 2};
		m_dwbonuspet[x][0] = btype[x];
		m_dwbonuspet[x][1] = 0;
	}
}

CNewPetActor::~CNewPetActor()
{
	this->Unsummon();
	m_pkOwner = 0;
}

void CNewPetActor::SetName(const char* name)
{
	std::string petName = "";

	if (0 != m_pkOwner && 
		0 == name && 
		0 != m_pkOwner->GetName())
	{
		petName += "'s Pet";
	}
	else
		petName += name;

	if (true == IsSummoned())
		m_pkChar->SetName(petName);

	m_name = petName;
}

void CNewPetActor::SetItemCube(int32_t pos, int32_t invpos)
{

	if (m_dwpetslotitem[pos] != -1)
	{

		return;
	}

	if (pos > 180 || pos < 0)
	{

		return;
	}

	m_dwpetslotitem[pos] = invpos;
}

#ifdef ENABLE_NEW_PET_SYSTEM_FEED

void CNewPetActor::ItemFeed(int32_t slot)
{
	if (!slot)
		return;

	if (!m_pkOwner)
		return;

	LPITEM itemxp = m_pkOwner->GetInventoryItem(slot);
	if (!itemxp)
		return;

	if (!itemxp->GetCount())
		return;

	
		

	if (itemxp->GetCount() > 1)
	{
		if (GetExpI() < GetNextExpFromItem())
		{
			if (itemxp->GetVnum() == 800)
			{
				SetExp(GetNextExpFromItem() * 0.1, 1);
				itemxp->SetCount(itemxp->GetCount() - 1);
			}
			if (itemxp->GetVnum() == 801)
			{
				SetExp(GetNextExpFromItem() * 0.25, 1);
				itemxp->SetCount(itemxp->GetCount() - 1);
			}
			if (itemxp->GetVnum() == 802)
			{
				SetExp(GetNextExpFromItem() * 0.4, 1);
				itemxp->SetCount(itemxp->GetCount() - 1);
			}
			if (itemxp->GetVnum() == 803)
			{
				SetExp(GetNextExpFromItem() * 0.5, 1);
				itemxp->SetCount(itemxp->GetCount() - 1);
			}
		}
		else {
			m_pkOwner->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("DAHA_FAZLA_NESNE_YEDIREMEZSIN"));
			return;
		}
	}
	else {
		if (GetExpI() < GetNextExpFromItem()) {
			if (itemxp->GetVnum() == 800) {
				SetExp(GetNextExpFromItem() * 0.1, 1);
				ITEM_MANAGER::instance().RemoveItem(itemxp);
			}
			if (itemxp->GetVnum() == 801) {
				SetExp(GetNextExpFromItem() * 0.25, 1);
				ITEM_MANAGER::instance().RemoveItem(itemxp);
			}
			if (itemxp->GetVnum() == 802) {
				SetExp(GetNextExpFromItem() * 0.4, 1);
				ITEM_MANAGER::instance().RemoveItem(itemxp);
			}
			if (itemxp->GetVnum() == 803) {
				SetExp(GetNextExpFromItem() * 0.5, 1);
				ITEM_MANAGER::instance().RemoveItem(itemxp);
			}
		}
		else {
			m_pkOwner->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("DAHA_FAZLA_NESNE_YEDIREMEZSIN"));
			return;
		}
	}
}
#endif

void CNewPetActor::ItemCubeFeed(int32_t type)
{

	for (int32_t i = 0; i < 9; ++i)
	{


		if (GetLevel() >= m_pkOwner->GetLevel())
		{
			m_pkOwner->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("Pet ile ayni seviye oldugundan item yediremezsin."));
			return;
		}



		if (m_dwpetslotitem[i] != -1)
		{

			LPITEM itemxp = m_pkOwner->GetInventoryItem(m_dwpetslotitem[i]);
			if (!itemxp)
				return;
			if (itemxp->GetID() == ITEM_MANAGER::instance().FindByVID(this->GetSummonItemVID())->GetID() || m_pkOwner->GetExchange() || m_pkOwner->GetMyShop() || m_pkOwner->GetShopOwner() || m_pkOwner->IsOpenSafebox() || m_pkOwner->IsCubeOpen())
				return;
			if (itemxp->isLocked())
				return;
			if (itemxp->IsBind())
				return;
			if (itemxp->IsUntilBind())
				return;

			if(type == 1)
			{

				if (itemxp->GetVnum() >= 55401 && itemxp->GetVnum() <= 55411 || itemxp->GetVnum() >= 55701 && itemxp->GetVnum() <= 55711 || itemxp->GetVnum() == 55001) {

					if (itemxp->GetVnum() == 55001)
					{

						int32_t tmp_dur = m_dwtduration / 2;

						if (m_dwduration + tmp_dur > m_dwtduration)
						{

							m_dwduration = m_dwtduration;
						}
						else
						{

							m_dwduration += tmp_dur;
						}
					}
					else
					{

						int32_t tmp_dur = m_dwtduration * 3 / 100;

						if (m_dwduration + tmp_dur > m_dwtduration)
						{

							m_dwduration = m_dwtduration;
						}
						else
						{

							m_dwduration += tmp_dur;
						}
					}

					m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetDuration %d %d", m_dwduration, m_dwtduration);
					ITEM_MANAGER::instance().RemoveItem(itemxp);
				}
			}
			else if(type == 3)
			{
				if (itemxp->GetType() == 1 || itemxp->GetType() == 2)
				{
					if (GetNextExpFromItem() - GetExpI() > 0)
					{
						SetExp(itemxp->GetShopBuyPrice() / 2, 1);
						ITEM_MANAGER::instance().RemoveItem(itemxp);
					}
					else
					{
						m_pkOwner->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("pet_exp_max"));
					}
				}
				else if (itemxp->GetType() == 36)
				{
					if (GetNextExpFromItem() - GetExpI() > 0)
					{
						if (itemxp->GetVnum() == 800)
						{
							SetExp(GetNextExpFromItem() * 0.25, 1);
							ITEM_MANAGER::instance().RemoveItem(itemxp);
						}
						if (itemxp->GetVnum() == 801)
						{
							SetExp(GetNextExpFromItem() * 0.50, 1);
							ITEM_MANAGER::instance().RemoveItem(itemxp);
						}
						if (itemxp->GetVnum() == 802)
						{
							SetExp(GetNextExpFromItem() * 0.75, 1);
							ITEM_MANAGER::instance().RemoveItem(itemxp);
						}
						if (itemxp->GetVnum() == 803)
						{
							SetExp(GetNextExpFromItem() * 1.0, 1);
							ITEM_MANAGER::instance().RemoveItem(itemxp);
						}
					}
					else
					{
						m_pkOwner->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("pet_exp_max"));
					}
				}
				else
				{
					m_pkOwner->ChatPacket(CHAT_TYPE_INFO, LC_TEXT("type 1 ou 2 only"));
				}
			}
		}
	}
	
	for (int32_t s = 0; s < 9; ++s) {
		m_dwpetslotitem[s] = -1;
	}
}

bool CNewPetActor::ResetSkill(int32_t skill) {
	if (m_dwskillslot[skill] > 0)
	{
		m_dwskillslot[skill] = 0;
		m_dwskill[skill] = 0;
		return true;
	}
	return false;
}

bool CNewPetActor::IncreasePetSkill(int32_t skill) {
	if (GetLevel() < 82 && m_dwevolution < 3)
		return false;
	for (int32_t i = 0; i < 3; ++i) { 
		if (m_dwskillslot[i] == skill) {  
			if (m_dwskill[i] < 20) {
				m_dwskill[i] += 1;
				m_pkOwner->ChatPacket(CHAT_TYPE_INFO, "Skillul ta a atins nivelul:%d", m_dwskill[i]);
				m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetSkill %d %d %d", i, m_dwskillslot[i], m_dwskill[i]);

				this->ClearBuff();
				this->GiveBuff();
				m_pkOwner->ComputePoints();

				return true;
			}
			else {
				m_pkOwner->ChatPacket(CHAT_TYPE_INFO, "Skillul tau a atins deja nivelul maxim!");
				return false;
			}
		}
	}

	for (int32_t i = 0; i < 3; ++i) {
		if (m_dwskillslot[i] == 0) { 
			m_dwskillslot[i] = skill;
			m_dwskill[i] = 1;
			m_pkOwner->ChatPacket(CHAT_TYPE_INFO, "Animalul tau de companie a invatat un nou skill!");
			m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetSkill %d %d %d", i, m_dwskillslot[i], m_dwskill[i]);

			this->ClearBuff();
			this->GiveBuff();
			m_pkOwner->ComputePoints();

			return true;
		}
	}

	m_pkOwner->ChatPacket(CHAT_TYPE_INFO, "Animalul tau de companie nu este capabil sa invete alte abilitati!");
	return false;
}

bool CNewPetActor::IncreasePetEvolution() {
	if (m_dwevolution < 3) {
		if (GetLevel() == 40 && m_dwevolution < 1 || GetLevel() == 80 && m_dwevolution < 2 || GetLevel() == 82 && m_dwevolution < 3) {
			m_dwevolution += 1;
			m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetEvolution %d", m_dwevolution);
			if (m_dwevolution == 3) {
				m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetSkill %d %d %d", 0, m_dwskillslot[0], m_dwskill[0]);
				m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetSkill %d %d %d", 1, m_dwskillslot[1], m_dwskill[1]);
				m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetSkill %d %d %d", 2, m_dwskillslot[2], m_dwskill[2]);
			}
		}
		else
			return false;
	}
	else {
		m_pkOwner->ChatPacket(CHAT_TYPE_INFO, "Animalul tau de companie a atins evolutia maxima!");
		return false;
	}
	return true;
}

void CNewPetActor:: IncreasePetBonus()
{
	int32_t tmplevel = GetLevel();
	if (m_dwPetType == 0)
	{
		int lvbonus = 0;
		if (tmplevel >= 60)
			lvbonus = 1;
		if (tmplevel % 5 == 0)
		{
			m_dwbonuspet[0][1] += number(1 + lvbonus, 5 + lvbonus);
			m_dwbonuspet[2][1] += number(1 + lvbonus, 5 + lvbonus);
		}

		if (tmplevel % 7 == 0)
		{
			m_dwbonuspet[1][1] += number(1 + lvbonus, 5 + lvbonus);
		}
	}
	else if (m_dwPetType == 1)
	{
		int32_t lvbonus = 0;
		if (m_dwdurationYas >= 60)
			lvbonus = 1;
		if (tmplevel % 5 == 0)
		{
			m_dwbonuspet[0][1] += number(2 + lvbonus, 3 + lvbonus);
			m_dwbonuspet[2][1] += number(2 + lvbonus, 3 + lvbonus);
		}

		if (tmplevel % 7 == 0)
		{
			m_dwbonuspet[1][1] += number(2 + lvbonus, 3 + lvbonus);
		}
	}
	else if (m_dwPetType == 2)
	{
		int32_t lvbonus = 0;
		if (tmplevel >= 60)
			lvbonus = 1;
		if (tmplevel % 5 == 0)
		{
			m_dwbonuspet[0][1] += number(1 + lvbonus, 7 + lvbonus);
			m_dwbonuspet[2][1] += number(1 + lvbonus, 7 + lvbonus);
		}

		if (tmplevel % 7 == 0)
		{
			m_dwbonuspet[1][1] += number(1 + lvbonus, 7 + lvbonus);
		}
	}
	else if (m_dwPetType == 3)
	{
		int32_t lvbonus = 0;
		if (m_dwdurationYas >= 60)
			lvbonus = 1;
		if (tmplevel % 5 == 0)
		{
			m_dwbonuspet[0][1] += number(3 + lvbonus, 4 + lvbonus);
			m_dwbonuspet[2][1] += number(3 + lvbonus, 4 + lvbonus);
		}

		if (tmplevel % 7 == 0)
		{
			m_dwbonuspet[1][1] += number(3 + lvbonus, 4 + lvbonus);
		}
	}
	else if (m_dwPetType == 4)
	{
		int32_t lvbonus = 0;
		if (tmplevel >= 60)
			lvbonus = 1;
		if (tmplevel % 5 == 0)
		{
			m_dwbonuspet[0][1] += number(1 + lvbonus, 9 + lvbonus);
			m_dwbonuspet[2][1] += number(1 + lvbonus, 9 + lvbonus);
		}

		if (tmplevel % 7 == 0)
		{
			m_dwbonuspet[1][1] += number(1 + lvbonus, 9 + lvbonus);
		}
	}
	else if (m_dwPetType == 5)
	{
		int32_t lvbonus = 0;
		if (m_dwdurationYas >= 60)
			lvbonus = 1;
		if (tmplevel % 5 == 0)
		{
			m_dwbonuspet[0][1] += number(5 + lvbonus, 6 + lvbonus);
			m_dwbonuspet[2][1] += number(5 + lvbonus, 6 + lvbonus);
		}

		if (tmplevel % 7 == 0)
		{
			m_dwbonuspet[1][1] += number(5 + lvbonus, 6 + lvbonus);
		}
	}
	else if (m_dwPetType == 6)
	{
		int32_t lvbonus = 0;
		if (m_dwdurationYas >= 60)
			lvbonus = 1;
		if (tmplevel % 5 == 0)
		{
			m_dwbonuspet[0][1] += number(6 + lvbonus, 8 + lvbonus);
			m_dwbonuspet[2][1] += number(6 + lvbonus, 8 + lvbonus);
		}

		if (tmplevel % 7 == 0)
		{
			m_dwbonuspet[1][1] += number(6 + lvbonus, 8 + lvbonus);
		}
	}

	m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetBonus %d %d %d", m_dwbonuspet[0][1], m_dwbonuspet[1][1], m_dwbonuspet[2][1]);
	LPITEM pSummonItem = ITEM_MANAGER::instance().FindByVID(this->GetSummonItemVID());

	if (pSummonItem != NULL)
	{

		for (int32_t b = 0; b < 3; b++)
		{

			pSummonItem->SetForceAttribute(b, 1, m_dwbonuspet[b][1]);
		}
		pSummonItem->SetSocket(1, tmplevel);

		this->ClearBuff();
		this->GiveBuff();
		m_pkOwner->ComputePoints();
	}
}

void CNewPetActor::SetNextExp(int32_t nextExp)
{	
	m_dwExpFromMob = (nextExp/10)* 9;
	m_dwExpFromItem = nextExp - m_dwExpFromMob;

}

void CNewPetActor::SetLevel(uint32_t level)
{
	m_pkChar->SetLevel(static_cast<char>(level));
	m_dwlevel = level;
	m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetLevel %d", m_dwlevel);	
	SetNextExp(m_pkChar->PetGetNextExp());
	m_pkChar->UpdatePacket();
	m_pkOwner->UpdatePacket();
}

void CNewPetActor::SetEvolution(int32_t lv) {
	if (lv == 40)
		m_dwevolution = 1;
	else if (lv == 80 && GetEvolution() == 1) 
		m_dwevolution = 2;
	else if (lv == 82 && GetEvolution() == 2) 
		m_dwevolution = 3;
}	

void CNewPetActor::SetExp(uint32_t exp, int32_t mode)
{
	if (GetLevel() >= m_pkOwner->GetLevel()) { return; }
	if (exp < 0)
		exp = MAX(m_dwexp - exp, 0);
	if (mode == 0) {
		if (GetExp() + exp >= GetNextExpFromMob() && GetExpI() >= GetNextExpFromItem())
		{
			if (GetEvolution() == 0 && GetLevel() == 40)
				return;
			else if (GetEvolution() == 1 && GetLevel() == 80)
				return;
			else if (GetEvolution() == 2 && GetLevel() == 82)
				return;
		}
	}
	else if (mode == 1)
	{
		if (GetExpI() + exp >= GetNextExpFromItem() && GetExp() >= GetNextExpFromMob())
		{
			if (GetEvolution() == 0 && GetLevel() == 40)
				return;
			else if (GetEvolution() == 1 && GetLevel() == 80)
				return;
			else if (GetEvolution() == 2 && GetLevel() == 82)
				return;
		}
	}

	if (mode == 0) {
		if (GetExp() + exp >= GetNextExpFromMob()) {
			if (GetExpI() >= GetNextExpFromItem()) {
				SetLevel(GetLevel() + 1);
				m_pkChar->UpdatePacket();
				m_pkChar->SendPetLevelUpEffect(m_pkChar->GetVID(), 1, GetLevel(), 1);
				IncreasePetBonus();
				m_dwlevelstep = 0;
				m_dwexp = 0;
				m_dwexpitem = 0;
				m_pkChar->SetExp(0);
				m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetExp %d %d %d", m_dwexp, m_dwexpitem, m_pkChar->PetGetNextExp());
				return;
			}
			else {

				m_dwlevelstep = 4;
				exp = GetNextExpFromMob() - GetExp();
				m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetExp %d %d %d", m_dwexp, m_dwexpitem, m_pkChar->PetGetNextExp());
			}
		}
		m_dwexp += exp;
		m_pkChar->SetExp(m_dwexp);
		m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetExp %d %d %d", m_dwexp, m_dwexpitem, m_pkChar->PetGetNextExp());
		if (GetLevelStep() < 4) {
			if (GetExp() >= GetNextExpFromMob() / 4 * 3 && m_dwlevelstep != 3) {
				m_dwlevelstep = 3;
			}
			else if (GetExp() >= GetNextExpFromMob() / 4 * 2 && m_dwlevelstep != 2) {
				m_dwlevelstep = 2;
			}
			else if (GetExp() >= GetNextExpFromMob() / 4 && m_dwlevelstep != 1) {
				m_dwlevelstep = 1;
			}
		}
	}
	else if (mode == 1) {
		if (GetExpI() + exp >= GetNextExpFromItem()) {
			if (GetExp() >= GetNextExpFromMob()) {
				m_dwexpitem = GetExpI() + exp - GetNextExpFromItem();
				m_dwexp = 0;
				m_pkChar->SetExp(0);
				m_dwlevelstep = 0;
				SetLevel(GetLevel() + 1);
				m_pkChar->UpdatePacket();
				m_pkChar->SendPetLevelUpEffect(m_pkChar->GetVID(), 1, GetLevel(), 1);
				IncreasePetBonus();
				m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetExp %d %d %d", m_dwexp, m_dwexpitem, m_pkChar->PetGetNextExp());
				
				return;
				if (GetExpI() > GetNextExpFromItem()) {
					m_dwexpitem = GetNextExpFromItem();
					m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetExp %d %d %d", m_dwexp, m_dwexpitem, m_pkChar->PetGetNextExp());
				}
			}
			else {
				exp = GetNextExpFromItem() - GetExpI();
				m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetExp %d %d %d", m_dwexp, m_dwexpitem, m_pkChar->PetGetNextExp());
			}
		}
		m_dwexpitem += exp;
		m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetExp %d %d %d", m_dwexp, m_dwexpitem, m_pkChar->PetGetNextExp());
	}

}

bool CNewPetActor::Mount()
{
	if (0 == m_pkOwner)
		return false;

	if (true == HasOption(EPetOption_Mountable))
		m_pkOwner->MountVnum(m_dwVnum);

	return m_pkOwner->GetMountVnum() == m_dwVnum;;
}

void CNewPetActor::UpdateTime()
{
	m_dwTimePet += 1;
	if (m_dwTimePet >= 60) {
		m_dwduration -= 1;
		m_dwTimePet = 0;
		LPITEM pSummonItem = ITEM_MANAGER::instance().FindByVID(this->GetSummonItemVID());
		if (pSummonItem != NULL){			
			pSummonItem->SetForceAttribute(3, 1, m_dwduration);
			pSummonItem->SetForceAttribute(4, 1, m_dwtduration);
		}
		m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetDuration %d %d", m_dwduration, m_dwtduration);
		m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetDurationYas %d", m_dwdurationYas);
	}

}

void CNewPetActor::Unmount()
{
	if (0 == m_pkOwner)
		return;

	if (m_pkOwner->IsHorseRiding())
		m_pkOwner->StopRiding();
}

void CNewPetActor::Unsummon()
{
	if (true == this->IsSummoned())
	{
		LPITEM pSummonItem = ITEM_MANAGER::instance().FindByVID(this->GetSummonItemVID());
		if (pSummonItem != NULL){


			DBManager::instance().DirectQuery("UPDATE new_petsystem SET level = %d, evolution=%d, exp=%d, expi=%d, bonus0=%d, bonus1=%d, bonus2=%d, skill0=%d, skill0lv= %d, skill1=%d, skill1lv= %d, skill2=%d, skill2lv= %d, duration=%d, tduration=%d, Petin_yasi=%d WHERE id = %lu ", this->GetLevel(), this->m_dwevolution, this->GetExp(), this->GetExpI(), this->m_dwbonuspet[0][1], this->m_dwbonuspet[1][1], this->m_dwbonuspet[2][1], this->m_dwskillslot[0], this->m_dwskill[0], this->m_dwskillslot[1], this->m_dwskill[1], this->m_dwskillslot[2], this->m_dwskill[2], this->m_dwduration, this->m_dwtduration, this->m_dwdurationYas, ITEM_MANAGER::instance().FindByVID(this->GetSummonItemVID())->GetID());
			this->ClearBuff();




			for (int32_t b = 0; b < 3; b++){
				pSummonItem->SetForceAttribute(b, 1, m_dwbonuspet[b][1]);
			}
			pSummonItem->SetForceAttribute(3, 1, m_dwduration);
			pSummonItem->SetForceAttribute(4, 1, m_dwtduration);
			pSummonItem->SetForceAttribute(5, 1, m_dwdurationYas);
			pSummonItem->SetForceAttribute(6, 1, GetSkillCount());
			pSummonItem->SetSocket(1,m_dwlevel);
			pSummonItem->SetSocket(0, false);
			pSummonItem->Lock(false);
		}
		this->SetSummonItem(NULL);
		if (NULL != m_pkOwner)
			m_pkOwner->ComputePoints();

		if (NULL != m_pkChar)
			M2_DESTROY_CHARACTER(m_pkChar);

		m_pkChar = 0;
		m_dwVID = 0;
		m_dwlevel = 1;
		m_dwlevelstep = 0;
		m_dwExpFromMob = 0;
		m_dwExpFromItem = 0;
		m_dwexp = 0;
		m_dwexpitem = 0;
		m_dwTimePet = 0;
		m_dwImmTime = 0;
		m_dwslotimm = 0;

		for (int32_t s = 0; s < 9; ++s) {
			m_dwpetslotitem[s] = -1;
		}
		ClearBuff();
		m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetUnsummon");
		m_pkOwner->SetImmortal(0);
	}
}

uint32_t CNewPetActor::Summon(const char* petName, LPITEM pSummonItem, bool bSpawnFar)
{
	int32_t x = m_pkOwner->GetX();
	int32_t y = m_pkOwner->GetY();
	int32_t z = m_pkOwner->GetZ();

	if (true == bSpawnFar)
	{
		x += (number(0, 1) * 2 - 1) * number(2000, 2500);
		y += (number(0, 1) * 2 - 1) * number(2000, 2500);
	}
	else
	{
		x += number(-100, 100);
		y += number(-100, 100);
	}

	if (0 != m_pkChar)
	{
		m_pkChar->Show (m_pkOwner->GetMapIndex(), x, y);
		m_dwVID = m_pkChar->GetVID();

		return m_dwVID;
	}
	
	m_pkChar = CHARACTER_MANAGER::instance().SpawnMob(
				m_dwVnum, 
				m_pkOwner->GetMapIndex(), 
				x, y, z,
				false, (int32_t)(m_pkOwner->GetRotation()+180), false);

	if (0 == m_pkChar)
	{
		sys_err("[CPetSystem::Summon] Failed to summon the pet. (vnum: %d)", m_dwVnum);
		return 0;
	}

	m_pkChar->SetNewPet();
	
	m_pkChar->SetEmpire(m_pkOwner->GetEmpire());

	m_dwVID = m_pkChar->GetVID();

	char szQuery1[1024];
	snprintf(szQuery1, sizeof(szQuery1), "SELECT `name`, `level`, `exp`, `expi`, `bonus0`, `bonus1`, `bonus2`, `skill0`, `skill0lv`, `skill1`, `skill1lv`, `skill2`, `skill2lv`, `duration`, `tduration`, `evolution`, `Petin_yasi`, `pet_type` FROM `new_petsystem` WHERE `id` = %d ", pSummonItem->GetID());

	std::unique_ptr<SQLMsg> pmsg2(DBManager::instance().DirectQuery(szQuery1));
	if (pmsg2->Get()->uiNumRows > 0) {
		MYSQL_ROW row = mysql_fetch_row(pmsg2->Get()->pSQLResult);			
		this->SetName(row[0]);		
		this->SetLevel(atoi(row[1]));		
		this->SetExp(atoi(row[2]), 0);		
		this->SetExp(atoi(row[3]), 1);
		this->m_dwbonuspet[0][1] = atoi(row[4]);
		this->m_dwbonuspet[1][1] = atoi(row[5]);
		this->m_dwbonuspet[2][1] = atoi(row[6]);
		this->m_dwskillslot[0] = atoi(row[7]);
		this->m_dwskill[0] = atoi(row[8]);
		this->m_dwskillslot[1] = atoi(row[9]);
		this->m_dwskill[1] = atoi(row[10]);
		this->m_dwskillslot[2] = atoi(row[11]);
		this->m_dwskill[2] = atoi(row[12]);
		this->m_dwduration = atoi(row[13]);
		this->m_dwtduration = atoi(row[14]);
		this->m_dwevolution = atoi(row[15]);
		this->m_dwdurationYas = atoi(row[16]);
		this->m_dwPetType = atoi(row[17]);
		
		
	}else
		this->SetName(petName);

	this->SetSummonItem(pSummonItem);
	
	m_pkOwner->ComputePoints();
	m_pkChar->Show(m_pkOwner->GetMapIndex(), x, y, z);
	
	m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetIcon %d", m_dwSummonItemVnum);
	m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetEvolution %d", m_dwevolution);
	m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetName %s", m_name.c_str());
	m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetLevel %d", m_dwlevel);
	m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetDuration %d %d", m_dwduration, m_dwtduration);
	m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetDurationYas %d", m_dwdurationYas);
	m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetBonus %d %d %d", m_dwbonuspet[0][1], m_dwbonuspet[1][1], m_dwbonuspet[2][1]);
	if (GetLevel() > 81 && m_dwevolution == 3 ){
		m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetSkill %d %d %d", 0, m_dwskillslot[0], m_dwskill[0]);
		m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetSkill %d %d %d", 1, m_dwskillslot[1], m_dwskill[1]);
		m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetSkill %d %d %d", 2, m_dwskillslot[2], m_dwskill[2]);
	}
	else {
		m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetSkill %d %d %d", 0, -1, m_dwskill[0]);
		m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetSkill %d %d %d", 1, -1, m_dwskill[1]);
		m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetSkill %d %d %d", 2, -1, m_dwskill[2]);
	}
	m_pkOwner->ChatPacket(CHAT_TYPE_COMMAND, "PetExp %d %d %d", m_dwexp, m_dwexpitem, m_pkChar->PetGetNextExp());
	this->GiveBuff();

	for (int32_t b = 0; b < 3; b++){
		pSummonItem->SetForceAttribute(b, 1, m_dwbonuspet[b][1]);
	}
	pSummonItem->SetForceAttribute(3, 1, m_dwduration);
	pSummonItem->SetForceAttribute(4, 1, m_dwtduration);
	pSummonItem->SetForceAttribute(5, 1, m_dwdurationYas);
	pSummonItem->SetForceAttribute(6, 1, GetSkillCount());
	pSummonItem->SetSocket(1,m_dwlevel);
	pSummonItem->SetSocket(0,true);
	pSummonItem->Lock(true);
	return m_dwVID;
}

bool CNewPetActor::_UpdatAloneActionAI(float fMinDist, float fMaxDist)
{
	float fDist = number(fMinDist, fMaxDist);
	float r = (float)number (0, 359);
	float dest_x = GetOwner()->GetX() + fDist * cos(r);
	float dest_y = GetOwner()->GetY() + fDist * sin(r);

	m_pkChar->SetNowWalking(true);

	if (!m_pkChar->IsStateMove() && m_pkChar->Goto(dest_x, dest_y))
		m_pkChar->SendMovePacket(FUNC_WAIT, 0, 0, 0, 0);

	m_dwLastActionTime = get_dword_time();

	return true;
}

bool CNewPetActor::_UpdateFollowAI()
{
	if (0 == m_pkChar->m_pkMobData)
	{
		return false;
	}
	
	if (0 == m_originalMoveSpeed)
	{
		const CMob* mobData = CMobManager::Instance().Get(m_dwVnum);

		if (0 != mobData)
			m_originalMoveSpeed = mobData->m_table.sMovingSpeed;
	}
	float	START_FOLLOW_DISTANCE = 300.0f;
	float	START_RUN_DISTANCE = 900.0f;

	float	RESPAWN_DISTANCE = 4500.f;
	int32_t		APPROACH = 290;

	bool bDoMoveAlone = true;
	bool bRun = false;

	uint32_t currentTime = get_dword_time();

	int32_t ownerX = m_pkOwner->GetX();		int32_t ownerY = m_pkOwner->GetY();
	int32_t charX = m_pkChar->GetX();			int32_t charY = m_pkChar->GetY();

	float fDist = DISTANCE_APPROX(charX - ownerX, charY - ownerY);

	if (fDist >= RESPAWN_DISTANCE)
	{
		float fOwnerRot = m_pkOwner->GetRotation() * 3.141592f / 180.f;
		float fx = -APPROACH * cos(fOwnerRot);
		float fy = -APPROACH * sin(fOwnerRot);
		if (m_pkChar->Show(m_pkOwner->GetMapIndex(), ownerX + fx, ownerY + fy))
		{
			return true;
		}
	}
	
	if (fDist >= START_FOLLOW_DISTANCE)
	{
		if( fDist >= START_RUN_DISTANCE)
		{
			bRun = true;
		}

		m_pkChar->SetNowWalking(!bRun);
		
		Follow(APPROACH);

		m_pkChar->SetLastAttacked(currentTime);
		m_dwLastActionTime = currentTime;
	}
	else 
		m_pkChar->SendMovePacket(FUNC_WAIT, 0, 0, 0, 0);

	return true;
}

bool CNewPetActor::Update(uint32_t deltaTime)
{
	bool bResult = true;

	if (IsSummoned()) {
		if (m_pkOwner->IsImmortal() && Pet_Skill_Table[16][2 + m_dwskill[m_dwslotimm]] <= (get_global_time() - m_dwImmTime) * 10) {
			m_dwImmTime = 0;
			m_pkOwner->SetImmortal(0);
		}
	}

	if (m_pkOwner->IsDead() || (IsSummoned() && m_pkChar->IsDead()) || (IsSummoned() && (m_pkOwner->GetExchange() || m_pkOwner->GetMyShop() || m_pkOwner->GetShopOwner() || m_pkOwner->IsOpenSafebox() || m_pkOwner->IsCubeOpen() || m_dwduration <= 0))
		|| NULL == ITEM_MANAGER::instance().FindByVID(this->GetSummonItemVID())
		|| ITEM_MANAGER::instance().FindByVID(this->GetSummonItemVID())->GetOwner() != this->GetOwner()
		)
	{
		this->Unsummon();
		return true;
	}

	if (this->IsSummoned() && HasOption(EPetOption_Followable))
		bResult = bResult && this->_UpdateFollowAI();

	return bResult;
}

bool CNewPetActor::Follow(float fMinDistance)
{
	if( !m_pkOwner || !m_pkChar) 
		return false;

	float fOwnerX = m_pkOwner->GetX();
	float fOwnerY = m_pkOwner->GetY();

	float fPetX = m_pkChar->GetX();
	float fPetY = m_pkChar->GetY();

	float fDist = DISTANCE_SQRT(fOwnerX - fPetX, fOwnerY - fPetY);
	if (fDist <= fMinDistance)
		return false;

	m_pkChar->SetRotationToXY(fOwnerX, fOwnerY);

	float fx, fy;

	float fDistToGo = fDist - fMinDistance;
	GetDeltaByDegree(m_pkChar->GetRotation(), fDistToGo, &fx, &fy);
	
	if (!m_pkChar->Goto((int32_t)(fPetX+fx+0.5f), (int32_t)(fPetY+fy+0.5f)) )
		return false;

	m_pkChar->SendMovePacket(FUNC_WAIT, 0, 0, 0, 0, 0);

	return true;
}

void CNewPetActor::SetSummonItem (LPITEM pItem)
{
	if (NULL == pItem)
	{
		m_dwSummonItemVID = 0;
		m_dwSummonItemID = 0;
		m_dwSummonItemVnum = 0;
		return;
	}

	m_dwSummonItemVID = pItem->GetVID();
	m_dwSummonItemID = pItem->GetID();
	m_dwSummonItemVnum = pItem->GetVnum();
}

void CNewPetActor::GiveBuff()
{
	int32_t cbonus[3] = { m_pkOwner->GetMaxHP(),  static_cast<int32_t>(m_pkOwner->GetPoint(POINT_DEF_GRADE)), m_pkOwner->GetMaxSP() };
	for (int32_t i = 0; i < 3; ++i) {
		m_pkOwner->AddAffect(AFFECT_NEW_PET, aApplyInfo[m_dwbonuspet[i][0]].bPointType, (int32_t)(cbonus[i]*m_dwbonuspet[i][1]/1000), 0,  60 * 60 * 24 * 365, 0, false);
	}
	
	if (GetLevel() > 81 && m_dwevolution == 3) {
		for (int32_t s = 0; s < 3; s++) {
			switch (m_dwskillslot[s])
			{
			case 1:
			case 2:
			case 3:
			case 4:
			case 5:
			case 6:
			case 7:
			case 8:
			case 9:
			case 11:
			case 12:
			case 13:
			case 14:
			case 15:
			case 16:
				m_pkOwner->AddAffect(AFFECT_NEW_PET, aApplyInfo[Pet_Skill_Table[m_dwskillslot[s] - 1][0]].bPointType, Pet_Skill_Table[m_dwskillslot[s] - 1][2 + m_dwskill[s]], 0, 60 * 60 * 24 * 365, 0, false);
				break;
			default:
				return;
			}
		}
	}
}

void CNewPetActor::ClearBuff()
{
	m_pkOwner->RemoveAffect(AFFECT_NEW_PET);
	return ;
}

void CNewPetActor::DoPetSkill(int32_t skillslot) {
	if (GetLevel() < 82 || m_dwevolution < 3)
		return;
	switch (m_dwskillslot[skillslot]) {
	case 10:
	{
		if (get_global_time() - m_pkOwner->GetNewPetSkillCD(0) <= 480) {
			m_pkOwner->ChatPacket(CHAT_TYPE_INFO, "Abilitatea se reincarca!%ds ramase", 480 - (get_global_time() - m_pkOwner->GetNewPetSkillCD(0)));
			return;
		}
		if (m_pkOwner->GetHPPct() > 20) {
			m_pkOwner->ChatPacket(CHAT_TYPE_INFO, "Poti utiliza aceasta abilitate numai cu pv-ul <= 20%!");
			return;
		}
		m_pkOwner->SetNewPetSkillCD(0, get_global_time());
		int32_t riphp = MIN(m_pkOwner->GetHP() + (int32_t)Pet_Skill_Table[9][2 + m_dwskill[skillslot]], m_pkOwner->GetMaxHP());
		m_pkOwner->PointChange(POINT_HP, riphp);
		m_pkOwner->EffectPacket(SE_HPUP_RED);
	}
	break;

	case 17:
	{
		if (get_global_time() - m_pkOwner->GetNewPetSkillCD(1) <= 600) {
			m_pkOwner->ChatPacket(CHAT_TYPE_INFO, "Abilitatea se reincarca!%ds ramase", 600 - (get_global_time() - m_pkOwner->GetNewPetSkillCD(1)));
			return;
		}
		m_pkOwner->SetNewPetSkillCD(1, get_global_time());
		m_pkOwner->ChatPacket(CHAT_TYPE_INFO, "Ai devenit nemuritor!");
		m_pkOwner->SetImmortal(1);
		m_dwslotimm = skillslot;
		m_dwImmTime = get_global_time();
	}
	break;
	case 18:
	{
		if (get_global_time() - m_pkOwner->GetNewPetSkillCD(2) <= 480) {
			m_pkOwner->ChatPacket(CHAT_TYPE_INFO, "Abilitatea se reincarca!%ds ramase", 480 -(get_global_time() - m_pkOwner->GetNewPetSkillCD(2)));
			return;
		}
		m_pkOwner->SetNewPetSkillCD(2, get_global_time());
		m_pkOwner->RemoveBadAffect();
	}
	break;
	
	default:
		return;
	}
}

CNewPetSystem::CNewPetSystem(LPCHARACTER owner)
{
	m_pkOwner = owner;
	m_dwUpdatePeriod = 400;

	m_dwLastUpdateTime = 0;
}

CNewPetSystem::~CNewPetSystem()
{
	Destroy();
}

bool  CNewPetSystem::IncreasePetSkill(int32_t skill) {
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				return petActor->IncreasePetSkill(skill);
			}
		}
	}
	return false;
}

bool CNewPetSystem::ResetSkill(int32_t skill) {
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				return petActor->ResetSkill(skill);
			}
		}
	}
	return false;
}

bool  CNewPetSystem::IncreasePetEvolution() {
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				return petActor->IncreasePetEvolution();
			}
		}
	}
	return false;
}


void CNewPetSystem::Destroy()
{
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;

		if (0 != petActor)
		{
			delete petActor;
		}
	}
	event_cancel(&m_pkNewPetSystemUpdateEvent);
	event_cancel(&m_pkNewPetSystemExpireEvent);
	m_petActorMap.clear();
}


void CNewPetSystem::UpdateTime()
{
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;

		if (0 != petActor && petActor->IsSummoned())
		{
			petActor->UpdateTime();
		}
	}
}

bool CNewPetSystem::Update(uint32_t deltaTime)
{
	bool bResult = true;

	uint32_t currentTime = get_dword_time();

	if (m_dwUpdatePeriod > currentTime - m_dwLastUpdateTime)
		return true;
	
	std::vector <CNewPetActor*> v_garbageActor;

	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;

		if (0 != petActor && petActor->IsSummoned())
		{
			LPCHARACTER pPet = petActor->GetCharacter();
			
			if (NULL == CHARACTER_MANAGER::instance().Find(pPet->GetVID()))
			{
				v_garbageActor.push_back(petActor);
			}
			else
			{
				bResult = bResult && petActor->Update(deltaTime);
			}
		}
	}
	for (std::vector<CNewPetActor*>::iterator it = v_garbageActor.begin(); it != v_garbageActor.end(); it++)
		DeletePet(*it);

	m_dwLastUpdateTime = currentTime;

	return bResult;
}

void CNewPetSystem::DeletePet(uint32_t mobVnum)
{
	TNewPetActorMap::iterator iter = m_petActorMap.find(mobVnum);

	if (m_petActorMap.end() == iter)
	{
		sys_err("[CPetSystem::DeletePet] Can't find pet on my list (VNUM: %d)", mobVnum);
		return;
	}

	CNewPetActor* petActor = iter->second;

	if (0 == petActor)
		sys_err("[CPetSystem::DeletePet] Null Pointer (petActor)");
	else
		delete petActor;

	m_petActorMap.erase(iter);	
}

void CNewPetSystem::DeletePet(CNewPetActor* petActor)
{
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		if (iter->second == petActor)
		{
			delete petActor;
			m_petActorMap.erase(iter);

			return;
		}
	}

	sys_err("[CPetSystem::DeletePet] Can't find petActor(0x%x) on my list(size: %d) ", petActor, m_petActorMap.size());
}

void CNewPetSystem::Unsummon(uint32_t vnum, bool bDeleteFromList)
{
	CNewPetActor* actor = this->GetByVnum(vnum);

	if (0 == actor)
	{
		sys_err("[CPetSystem::GetByVnum(%d)] Null Pointer (petActor)", vnum);
		return;
	}
	actor->Unsummon();

	if (true == bDeleteFromList)
		this->DeletePet(actor);

	bool bActive = false;
	for (TNewPetActorMap::iterator it = m_petActorMap.begin(); it != m_petActorMap.end(); it++)
	{
		bActive |= it->second->IsSummoned();
	}
	if (false == bActive)
	{
		event_cancel(&m_pkNewPetSystemUpdateEvent);
		event_cancel(&m_pkNewPetSystemExpireEvent);
		m_pkNewPetSystemUpdateEvent = NULL;
		m_pkNewPetSystemExpireEvent = NULL;
	}
}

uint32_t CNewPetSystem::GetNewPetITemID()
{
	uint32_t itemid = 0;
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				itemid = petActor->GetSummonItemID();
				break;
			}			
		}
	}
	return itemid;

}

bool CNewPetSystem::IsActivePet()
{
	bool state = false;
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				state = true;
				break;
			}			
		}
	}
	return state;

}

int32_t CNewPetSystem::GetLevelStep()
{
	int32_t step = 4;
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				step = petActor->GetLevelStep();
				break;
			}
		}
	}
	return step;
}

void CNewPetSystem::SetExp(int32_t iExp, int32_t mode)
{
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				petActor->SetExp(iExp, mode);
				break;
			}
		}
	}
}

int32_t CNewPetSystem::GetEvolution()
{
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				return petActor->GetEvolution();
			}
		}
	}
	return -1;
}

int32_t CNewPetSystem::GetLevel()
{
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				return petActor->GetLevel();
			}
		}
	}
	return -1;
}

int32_t CNewPetSystem::GetExp()
{
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				return petActor->GetExp();
			}
		}
	}
	return 0;
}

int32_t CNewPetActor::GetSkillCount() {
	int skillCount = 0;

	for (int32_t i = 0; i < 3; i++) {
		if (m_dwskillslot[i] >= 0)
			++skillCount;
	}
	return skillCount;
}

void CNewPetSystem::SetItemCube(int32_t pos, int32_t invpos) {
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				return petActor->SetItemCube(pos, invpos);
			}
		}
	}
}

int32_t CNewPetSystem::GetPetType()
{
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned())
			{
				return petActor->GetPetType();
			}
		}
	}
	return -1;
}

void CNewPetSystem::ItemCubeFeed(int32_t type) {
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				return petActor->ItemCubeFeed(type);
			}
		}
	}
}


#ifdef ENABLE_NEW_PET_SYSTEM_FEED
void CNewPetSystem::ItemFeed(int32_t slot)
{
	if (!slot || !this)
		return;

	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor)
		{
			if (petActor != 0) {
				if (petActor->IsSummoned()) {
					return petActor->ItemFeed(slot);
				}
			}
		}
	}
}
#endif

void CNewPetSystem::DoPetSkill(int32_t skillslot) {
	for (TNewPetActorMap::iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;
		if (petActor != 0)
		{
			if (petActor->IsSummoned()) {
				return petActor->DoPetSkill(skillslot);
			}
		}
	}
}

CNewPetActor* CNewPetSystem::Summon(uint32_t mobVnum, LPITEM pSummonItem, const char* petName, bool bSpawnFar, uint32_t options)
{
	CNewPetActor* petActor = this->GetByVnum(mobVnum);

	if (0 == petActor)
	{
		petActor = M2_NEW CNewPetActor(m_pkOwner, mobVnum, options);
		m_petActorMap.insert(std::make_pair(mobVnum, petActor));
	}

	uint32_t petVID = petActor->Summon(petName, pSummonItem, bSpawnFar);

	if (NULL == m_pkNewPetSystemUpdateEvent)
	{
		newpetsystem_event_info* info = AllocEventInfo<newpetsystem_event_info>();

		info->pPetSystem = this;

		m_pkNewPetSystemUpdateEvent = event_create(newpetsystem_update_event, info, PASSES_PER_SEC(1) / 4);	
	}

	if (NULL == m_pkNewPetSystemExpireEvent)
	{
		newpetsystem_event_infoe* infoe = AllocEventInfo<newpetsystem_event_infoe>();

		infoe->pPetSystem = this;

		m_pkNewPetSystemExpireEvent = event_create(newpetsystem_expire_event, infoe, PASSES_PER_SEC(1) );
	}

	return petActor;
}

CNewPetActor* CNewPetSystem::GetByVID(uint32_t vid) const
{
	CNewPetActor* petActor = 0;

	bool bFound = false;

	for (TNewPetActorMap::const_iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		petActor = iter->second;

		if (0 == petActor)
		{
			sys_err("[CPetSystem::GetByVID(%d)] Null Pointer (petActor)", vid);
			continue;
		}

		bFound = petActor->GetVID() == vid;

		if (true == bFound)
			break;
	}

	return bFound ? petActor : 0;
}

CNewPetActor* CNewPetSystem::GetByVnum(uint32_t vnum) const
{
	CNewPetActor* petActor = 0;

	TNewPetActorMap::const_iterator iter = m_petActorMap.find(vnum);

	if (m_petActorMap.end() != iter)
		petActor = iter->second;

	return petActor;
}

uint32_t CNewPetSystem::CountSummoned() const
{
	uint32_t count = 0;

	for (TNewPetActorMap::const_iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;

		if (0 != petActor)
		{
			if (petActor->IsSummoned())
				++count;
		}
	}

	return count;
}

void CNewPetSystem::RefreshBuff()
{
	for (TNewPetActorMap::const_iterator iter = m_petActorMap.begin(); iter != m_petActorMap.end(); ++iter)
	{
		CNewPetActor* petActor = iter->second;

		if (0 != petActor)
		{
			if (petActor->IsSummoned())
			{
				petActor->ClearBuff();
				petActor->GiveBuff();
			}
		}
	}
}
