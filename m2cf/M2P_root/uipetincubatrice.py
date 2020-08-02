#########################################
# title_name		: System Pack		#
# filename			: root				#
# author			: Bvural41			#
# version			: Version 0.0.2		#
# date				: 2015 04 11		#
# update			: 2019 02 05		#
#########################################

import os
import ui
import player
import mouseModule
import net
import app
import snd
import item
import player
import chat
import grp
import uiScriptLocale
import localeInfo
import constInfo
import ime
import wndMgr
import uiCommon

class PetSystemIncubator(ui.ScriptWindow):
	
	def __init__(self, new_pet):
		ui.ScriptWindow.__init__(self)
		self.__LoadWindow()
		self.LoadPetIncubatorImg(new_pet)

	def __del__(self):
		ui.ScriptWindow.__del__(self)

	def Show(self):
		ui.ScriptWindow.Show(self)

	def Close(self):
		self.Hide()
	
	def __LoadWindow(self):
		try:
			pyScrLoader = ui.PythonScriptLoader()
			pyScrLoader.LoadScriptFile(self, "uiscript/PetHatchingWindow.py")
		except:
			import exception
			exception.Abort("PetHatchingWindow.LoadWindow.LoadObject")
			
		try:
			self.board = self.GetChild("board")
			self.boardtitle = self.GetChild("PetHatching_TitleBar")
			
			self.petimg = self.GetChild("HatchingItemSlot")
			self.petname = self.GetChild("pet_name")
			self.HatchingButton = self.GetChild("HatchingButton")
			
			
			#Event
			self.boardtitle.SetCloseEvent(ui.__mem_func__(self.Close))
			self.HatchingButton.SetEvent(ui.__mem_func__(self.RequestHatching,))
			
			
		except:
			import exception
			exception.Abort("PetHatchingWindow.LoadWindow.BindObject")
			
	def LoadPetIncubatorImg(self, new_pet):
		petarryname = [localeInfo.PET_SYSTEM_MONKEY_EGG, localeInfo.PET_SYSTEM_BARONES_EGG, localeInfo.PET_SYSTEM_RAZADOR_EGG, localeInfo.PET_SYSTEM_NEMERE_EGG, localeInfo.PET_SYSTEM_EJDER_EGG, localeInfo.PET_SYSTEM_MELEY_EGG, localeInfo.PET_SYSTEM_HYDRA_EGG, localeInfo.PET_SYSTEM_AZRAIL_EGG, localeInfo.PET_SYSTEM_CELLAT_EGG, localeInfo.PET_SYSTEM_BASSHIDO_EGG]
		petarryimg = [55701, 55702, 55703, 55704, 55705, 55706, 55707, 55708, 55709, 55710]
		chat.AppendChat(chat.CHAT_TYPE_INFO, ""+petarryname[int(new_pet)]+".")
		self.petname.SetFocus()
		self.petimg.SetItemSlot(0,petarryimg[int(new_pet)], 0)
		self.petimg.SetAlwaysRenderCoverButton(0, TRUE)
		#self.petimg.SetSlotBaseImage("icon/item/"+petarryimg[new_pet], 0, 0, 0, 0)
		
	def RequestHatching(self):
		if self.petname.GetText() == "" or len(self.petname.GetText()) < 4:
			chat.AppendChat(chat.CHAT_TYPE_INFO, "[Pet-Kulucka] Eksik Harf. 4 Haneli Sayi Giriniz.")
			return			
		if player.GetElk() < 100000:
			chat.AppendChat(chat.CHAT_TYPE_INFO, ""+str(localeInfo.NumberToMoneyString(100000)) +"'a ihtiyaciniz var.")
			return
		questionDialog = uiCommon.QuestionDialog()
		questionDialog.SetText('Petine "'+self.petname.GetText()+'" ' + localeInfo.PET_TEXTT_8)
		questionDialog.SetAcceptEvent(ui.__mem_func__(self.evett))
		questionDialog.SetCancelEvent(ui.__mem_func__(self.hayirr))
		questionDialog.Open()
		self.questionDialog = questionDialog
	def evett(self):
		import chr
		chr.RequestPetName(self.petname.GetText())
		self.questionDialog.Close()
		self.petname.KillFocus()
		self.Close()
	def hayirr(self):
		self.questionDialog.Close()
