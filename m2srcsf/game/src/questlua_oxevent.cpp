#include "stdafx.h"
#include "questmanager.h"
#include "char.h"
#include "char_manager.h"
#include "OXEvent.h"
#include "config.h"
#include "locale_service.h"

namespace quest
{
	int32_t oxevent_get_status(lua_State* L)
	{
		OXEventStatus ret = COXEventManager::instance().GetStatus();

		lua_pushnumber(L, (int32_t)ret);

		return 1;
	}

	int32_t oxevent_open(lua_State* L)
	{
		COXEventManager::instance().ClearQuiz();

		char script[256];

		if (LC_IsFrance())
			snprintf(script, sizeof(script), "%s/oxquiz_fr.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsEnglish())
			snprintf(script, sizeof(script), "%s/oxquiz_en.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsJapan())
			snprintf(script, sizeof(script), "%s/oxquiz_jp.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsHongKong())
			snprintf(script, sizeof(script), "%s/oxquiz_hk.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsNewCIBN())
			snprintf(script, sizeof(script), "%s/oxquiz_cn.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsGermany())
			snprintf(script, sizeof(script), "%s/oxquiz_de.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsKorea())
			snprintf(script, sizeof(script), "%s/oxquiz_kr.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsItaly())
			snprintf(script, sizeof(script), "%s/oxquiz_it.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsSpain())
			snprintf(script, sizeof(script), "%s/oxquiz_es.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsGreek())
			snprintf(script, sizeof(script), "%s/oxquiz_gr.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsUK())
			snprintf(script, sizeof(script), "%s/oxquiz_en.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsTurkey())
			snprintf(script, sizeof(script), "%s/oxquiz_tr.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsPoland())
			snprintf(script, sizeof(script), "%s/oxquiz_pl.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsPortugal())
			snprintf(script, sizeof(script), "%s/oxquiz_pt.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsCanada())
			snprintf(script, sizeof(script), "%s/oxquiz_ca.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsBrazil())
			snprintf(script, sizeof(script), "%s/oxquiz_br.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsYMIR())
			snprintf(script, sizeof(script), "%s/oxquiz_en.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsRussia())
			snprintf(script, sizeof(script), "%s/oxquiz_ru.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsDenmark())
			snprintf(script, sizeof(script), "%s/oxquiz_dk.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsBulgaria())
			snprintf(script, sizeof(script), "%s/oxquiz_bg.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsCroatia())
			snprintf(script, sizeof(script), "%s/oxquiz_hr.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsMexico())
			snprintf(script, sizeof(script), "%s/oxquiz_mx.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsArabia())
			snprintf(script, sizeof(script), "%s/oxquiz_ae.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsCzech())
			snprintf(script, sizeof(script), "%s/oxquiz_cz.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsHungary())
			snprintf(script, sizeof(script), "%s/oxquiz_hu.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsRomania())
			snprintf(script, sizeof(script), "%s/oxquiz_ro.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsNetherlands())
			snprintf(script, sizeof(script), "%s/oxquiz_nl.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsSingapore())
			snprintf(script, sizeof(script), "%s/oxquiz_sg.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsVietnam())
			snprintf(script, sizeof(script), "%s/oxquiz_vn.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsThailand())
			snprintf(script, sizeof(script), "%s/oxquiz_th.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsUSA())
			snprintf(script, sizeof(script), "%s/oxquiz_en.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsWE_Korea())
			snprintf(script, sizeof(script), "%s/oxquiz_kr.lua", LocaleService_GetBasePath().c_str());
		else if (LC_IsTaiwan())
			snprintf(script, sizeof(script), "%s/oxquiz_tw.lua", LocaleService_GetBasePath().c_str());
		else
			snprintf(script, sizeof(script), "%s/oxquiz_en.lua", LocaleService_GetBasePath().c_str());

		int32_t result = lua_dofile(quest::CQuestManager::instance().GetLuaState(), script);

		if (result != 0)
		{
			lua_pushnumber(L, 0);
			return 1;
		}
		else
		{
			lua_pushnumber(L, 1);
		}
		
		COXEventManager::instance().SetStatus(OXEVENT_OPEN);

		return 1;
	}
	
	int32_t oxevent_close(lua_State* L)
	{
		COXEventManager::instance().SetStatus(OXEVENT_CLOSE);
		
		return 0;
	}
	
	int32_t oxevent_quiz(lua_State* L)
	{
		if (lua_isnumber(L, 1) && lua_isnumber(L, 2))
		{
			bool ret = COXEventManager::instance().Quiz((int32_t)lua_tonumber(L, 1), (int32_t)lua_tonumber(L, 2));

			if (ret == false)
			{
				lua_pushnumber(L, 0);
			}
			else
			{
				lua_pushnumber(L, 1);
			}
		}

		return 1;
	}
	
	int32_t oxevent_get_attender(lua_State* L)
	{
		lua_pushnumber(L, (int32_t)COXEventManager::instance().GetAttenderCount());
		return 1;
	}

	EVENTINFO(end_oxevent_info)
	{
		int32_t empty;

		end_oxevent_info() 
		: empty( 0 )
		{
		}
	};

	EVENTFUNC(end_oxevent)
	{
		COXEventManager::instance().CloseEvent();
		return 0;
	}

	int32_t oxevent_end_event(lua_State* L)
	{
		COXEventManager::instance().SetStatus(OXEVENT_FINISH);

		end_oxevent_info* info = AllocEventInfo<end_oxevent_info>();
		event_create(end_oxevent, info, PASSES_PER_SEC(5));

		return 0;
	}

	int32_t oxevent_end_event_force(lua_State* L)
	{
		COXEventManager::instance().CloseEvent();
		COXEventManager::instance().SetStatus(OXEVENT_FINISH);

		return 0;
	}

	int32_t oxevent_give_item(lua_State* L)
	{
		if (lua_isnumber(L, 1) && lua_isnumber(L, 2))
		{
			COXEventManager::instance().GiveItemToAttender((int32_t)lua_tonumber(L, 1), (int32_t)lua_tonumber(L, 2));
		}

		return 0;
	}
	
	void RegisterOXEventFunctionTable()
	{
		luaL_reg oxevent_functions[] = 
		{
			{	"get_status",	oxevent_get_status	},
			{	"open",			oxevent_open		},
			{	"close",		oxevent_close		},
			{	"quiz",			oxevent_quiz		},
			{	"get_attender",	oxevent_get_attender},
			{	"end_event",	oxevent_end_event	},
			{	"end_event_force",	oxevent_end_event_force	},
			{	"give_item",	oxevent_give_item	},

			{ NULL, NULL}
		};

		CQuestManager::instance().AddLuaFunctionTable("oxevent", oxevent_functions);
	}
}
