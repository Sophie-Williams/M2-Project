#include "stdafx.h"
#include "constants.h"
#include "utils.h"
#include "item.h"
#include "item_addon.h"

CItemAddonManager::CItemAddonManager(){}
CItemAddonManager::~CItemAddonManager(){}

void CItemAddonManager::ApplyAddonTo(int32_t iAddonType, LPITEM pItem)
{
	if (!pItem)
	{
		sys_err("ITEM pointer null");
		return;
	}

	

	int32_t iSkillBonus = MINMAX(-32, (int32_t) (gauss_random(0, 5) + 0.5f), 32);
	int32_t iNormalHitBonus = 0;
	if (abs(iSkillBonus) <= 20)
		iNormalHitBonus = -2 * iSkillBonus + abs(number(-8, 8) + number(-8, 8)) + number(2, 8);
	else
		iNormalHitBonus = -2 * iSkillBonus + number(2, 8);

	pItem->RemoveAttributeType(APPLY_SKILL_DAMAGE_BONUS);
	pItem->RemoveAttributeType(APPLY_NORMAL_HIT_DAMAGE_BONUS);
	pItem->AddAttribute(APPLY_NORMAL_HIT_DAMAGE_BONUS, iNormalHitBonus);
	pItem->AddAttribute(APPLY_SKILL_DAMAGE_BONUS, iSkillBonus);
}
