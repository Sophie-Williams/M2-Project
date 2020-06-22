#pragma once

class CTableBySkill : public singleton<CTableBySkill>
{
	public:
		CTableBySkill()
			: m_aiSkillDamageByLevel(NULL)
		{
			for ( int32_t job = 0; job < JOB_MAX_NUM * 2; ++job )
				m_aiSkillPowerByLevelFromType[job] = NULL;
		}

		~CTableBySkill()
		{
			DeleteAll();
		}

		bool 	Check() const;

		void 	DeleteAll();

		int32_t 	GetSkillPowerByLevelFromType( int32_t job, int32_t skillgroup, int32_t skilllevel, bool bMob ) const;
		void 	SetSkillPowerByLevelFromType( int32_t idx, const int32_t* aTable );
		void	DeleteSkillPowerByLevelFromType( int32_t idx );

		int32_t 	GetSkillDamageByLevel( int32_t Level ) const;
		void	SetSkillDamageByLevelTable( const int32_t* aTable );
		void 	DeleteSkillDamageByLevelTable();

	private:
		int32_t * m_aiSkillPowerByLevelFromType[JOB_MAX_NUM*2];
		int32_t * m_aiSkillDamageByLevel;
};
