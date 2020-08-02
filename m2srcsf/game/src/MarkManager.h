#pragma once

#include "MarkImage.h"

class CGuildMarkManager : public singleton<CGuildMarkManager>
{
	public:
		enum
		{
			MAX_IMAGE_COUNT = 5,
			INVALID_MARK_ID = 0xffffffff,
		};

		struct TGuildSymbol
		{
			uint32_t crc;
			std::vector<uint8_t> raw;
		};

		CGuildMarkManager();
		virtual ~CGuildMarkManager();

		const TGuildSymbol * GetGuildSymbol(uint32_t GID);
		bool LoadSymbol(const char* filename);
		void SaveSymbol(const char* filename);
		void UploadSymbol(uint32_t guildID, int32_t iSize, const uint8_t* pbyData);

		void SetMarkPathPrefix(const char * prefix);

		bool LoadMarkIndex();
		bool SaveMarkIndex();

		void LoadMarkImages();
		void SaveMarkImage(uint32_t imgIdx);

		bool GetMarkImageFilename(uint32_t imgIdx, std::string & path) const;
		bool AddMarkIDByGuildID(uint32_t guildID, uint32_t markID);
		uint32_t GetMarkImageCount() const;
		uint32_t GetMarkCount() const;
		uint32_t GetMarkID(uint32_t guildID);

		void CopyMarkIdx(char * pcBuf) const;
		uint32_t SaveMark(uint32_t guildID, uint8_t * pbMarkImage);
		void DeleteMark(uint32_t guildID);
		void GetDiffBlocks(uint32_t imgIdx, const uint32_t * crcList, std::map<uint8_t, const SGuildMarkBlock *> & mapDiffBlocks);

		bool SaveBlockFromCompressedData(uint32_t imgIdx, uint32_t idBlock, const uint8_t * pbBlock, uint32_t dwSize);
		bool GetBlockCRCList(uint32_t imgIdx, uint32_t * crcList);

	private:
		CGuildMarkImage * __NewImage();
		void __DeleteImage(CGuildMarkImage * pkImgDel);

		uint32_t __AllocMarkID(uint32_t guildID);

		CGuildMarkImage * __GetImage(uint32_t imgIdx);
		CGuildMarkImage * __GetImagePtr(uint32_t idMark);

		std::map<uint32_t, CGuildMarkImage *> m_mapIdx_Image;
		std::map<uint32_t, uint32_t> m_mapGID_MarkID;

		std::set<uint32_t> m_setFreeMarkID;
		std::string		m_pathPrefix;

	private:
		std::map<uint32_t, TGuildSymbol> m_mapSymbol;
};
