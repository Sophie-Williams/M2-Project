#pragma once

class CGrid;

enum EExchangeValues
{
	EXCHANGE_ITEM_MAX_NUM 	= 12,
	EXCHANGE_MAX_DISTANCE	= 1000
};

class CExchange
{
	public:
		CExchange(LPCHARACTER pOwner);
		~CExchange();

		bool		Accept(bool bIsAccept = true);
		void		Cancel();
#ifdef ENABLE_CHEQUE_SYSTEM
		bool		AddCheque(int32_t Cheque);
#endif
		bool		AddGold(int64_t lGold);
		bool		AddItem(TItemPos item_pos, uint8_t display_pos);
		bool		RemoveItem(uint8_t pos);

		LPCHARACTER	GetOwner()
		{
			return m_pOwner;
		}

		CExchange *	GetCompany()
		{
			return m_pCompany;
		}

		bool		GetAcceptStatus()
		{
			return m_bAccept;
		}

		void		SetCompany(CExchange * pExchange)
		{
			m_pCompany = pExchange;
		}

	private:
		bool		Done();
		bool		Check(int32_t * piItemCount);
		bool		CheckSpace();

	private:
		CExchange *	m_pCompany;

		LPCHARACTER	m_pOwner;

		TItemPos		m_aItemPos[EXCHANGE_ITEM_MAX_NUM];
		LPITEM		m_apItems[EXCHANGE_ITEM_MAX_NUM];
		uint8_t		m_abItemDisplayPos[EXCHANGE_ITEM_MAX_NUM];

		bool 		m_bAccept;
		int64_t		m_lGold;

#ifdef ENABLE_CHEQUE_SYSTEM
		int32_t		m_lCheque;
#endif

		CGrid *		m_pGrid;

};
