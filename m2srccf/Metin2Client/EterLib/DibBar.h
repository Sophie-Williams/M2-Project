#pragma once

#include "GrpDib.h"

class CBlockTexture;

class CDibBar
{
	public:
		CDibBar();
		virtual ~CDibBar();

		bool Create(HDC hdc, DWORD dwWidth, DWORD dwHeight);
		void Invalidate();
		void SetClipRect(const RECT & c_rRect);
		void ClearBar();
		void Render(int ix, int iy);

	protected:
		DWORD __NearTextureSize(DWORD dwSize);
		void __DivideTextureSize(DWORD dwSize, DWORD dwMax, DWORD * pdwxStep, DWORD * pdwxCount, DWORD * pdwxRest);
		//CBlockTexture* __BuildTextureBlock(DWORD dwxPos, DWORD dwyPos, DWORD dwImageWidth, DWORD dwImageHeight, DWORD dwTextureWidth, DWORD dwTextureHeight);
		//ASIKOOFIX
		CBlockTexture* __BuildTextureBlock(LONG dwxPos, LONG dwyPos, LONG dwImageWidth, LONG dwImageHeight, DWORD dwTextureWidth, DWORD dwTextureHeight);
		void __BuildTextureBlockList(DWORD dwWidth, DWORD dwHeight, DWORD dwMax=256);

		virtual void OnCreate(){}

	protected:
		CGraphicDib m_dib;
		std::vector<CBlockTexture *> m_kVec_pkBlockTexture;

		//ASIKOOFIX
		//DWORD m_dwWidth;
		//DWORD m_dwHeight;
		LONG m_dwWidth;
		LONG m_dwHeight;
};
