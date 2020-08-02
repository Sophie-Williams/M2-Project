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

class PetFeedWindow(ui.ScriptWindow):

	def __init__(self):
		ui.ScriptWindow.__init__(self)
		self.is_showed = False
		self.arryfeed = [-1, -1, -1, -1, -1, -1, -1, -1, -1]
		self.arrysize = [0, 0, 0, 0, 0, 0, 0, 0, 0]
		self.questionDialog = None
		self.__LoadWindow()
		

	def __del__(self):
		ui.ScriptWindow.__del__(self)
		
	def IsShow(self):
		return self.is_showed

	def Show(self):
		self.is_showed = True
		ui.ScriptWindow.Show(self)

	def Close(self):
		for x in range(len(self.arryfeed)):
			self.arryfeed[x] = -1
			self.arrysize[x] = 0
			self.petslot.ClearSlot(x)
			self.petslot.RefreshSlot()
		self.Hide()
		self.is_showed = False
		constInfo.FEEDWIND = 0
	
	def __LoadWindow(self):
		try:
			pyScrLoader = ui.PythonScriptLoader()
			pyScrLoader.LoadScriptFile(self, "uiscript/PetFeedWindow.py")
		except:
			import exception
			exception.Abort("PetFeedWindow.LoadWindow.LoadObject")
			
		try:
			self.petfeed = self.GetChild("board")
			self.closebtn = self.GetChild("PetFeed_TitleBar")
			self.petslot = self.GetChild("FeedItemSlot")
			self.feedbtn = self.GetChild("FeedButton")
			
			self.petslot.SetSelectEmptySlotEvent(ui.__mem_func__(self.SelectEmptySlot))
			self.petslot.SetSelectItemSlotEvent(ui.__mem_func__(self.SelectItemSlot))
			
			self.feedbtn.SetEvent(ui.__mem_func__(self.SendPetItem))
			self.closebtn.SetCloseEvent(self.Close)
			
			
		except:
			import exception
			exception.Abort("PetFeedWindow.LoadWindow.BindObject")
			
	def OnCloseQuestionDialog(self):
		if self.questionDialog:
			self.questionDialog.Close()

		self.questionDialog = None
	
	def SelectEmptySlot(self, selectedSlotPos):
		if mouseModule.mouseController.isAttached():

			attachedSlotType = mouseModule.mouseController.GetAttachedType()
			attachedSlotPos = mouseModule.mouseController.GetAttachedSlotNumber()
			attachedItemCount = mouseModule.mouseController.GetAttachedItemCount()
			attachedItemIndex = mouseModule.mouseController.GetAttachedItemIndex()
			if attachedItemCount > 1:
				chat.AppendChat(chat.CHAT_TYPE_INFO, uiScriptLocale.PET_FEED_STACK_ITEM)
				return
			if attachedItemCount == 1:
				attachedItemCount = 0
			item.SelectItem(attachedItemIndex)
			(width, height) = item.GetItemSize()
			if player.SLOT_TYPE_INVENTORY == attachedSlotType and not attachedSlotPos in self.arryfeed and self.CanMoveItem(height, selectedSlotPos):
				itemCount = player.GetItemCount(attachedSlotPos)
				attachedCount = mouseModule.mouseController.GetAttachedItemCount()
				self.arryfeed[selectedSlotPos] = attachedSlotPos
				self.arrysize[selectedSlotPos] = height
				self.petslot.SetItemSlot(selectedSlotPos, attachedItemIndex, attachedItemCount)
			else:
				chat.AppendChat(chat.CHAT_TYPE_INFO, uiScriptLocale.PET_NOT_ACCESS)

			mouseModule.mouseController.DeattachObject()
	
	def PetUseFeed(self, SlotPos):
		itemIndex = player.GetItemIndex(SlotPos)
		ItemCount = player.GetItemCount(SlotPos)
		(width, height) = item.GetItemSize()

		if ItemCount > 1:
			chat.AppendChat(chat.CHAT_TYPE_INFO, uiScriptLocale.PET_FEED_STACK_ITEM)
			constInfo.USE_FEED = -1
			return

		if ItemCount == 1:
			ItemCount = 0

		if not SlotPos in self.arryfeed:
			for x in range(len(self.arryfeed)):
				if self.CanMoveItem(height, x):
					if self.arryfeed[x] == -1:
						if height == 1 and self.arrysize[x] == 0:
							self.arryfeed[x] = SlotPos
							self.arrysize[x] = height

							self.petslot.SetItemSlot(x, itemIndex, ItemCount)
							return
						elif height == 2 and self.arrysize[x+3] == 0:
							self.arryfeed[x] = SlotPos
							self.arrysize[x] = height

							self.petslot.SetItemSlot(x, itemIndex, ItemCount)
							return
						elif height == 3 and self.arrysize[x+3] == 0 and self.arrysize[x+6] == 0:
							self.arryfeed[x] = SlotPos
							self.arrysize[x] = height

							self.petslot.SetItemSlot(x, itemIndex, ItemCount)
							return
						else:
							constInfo.USE_FEED = -1
							break
							return

						constInfo.USE_FEED = -1
						break
						return

							# self.arryfeed[x] = SlotPos

							# self.petslot.SetItemSlot(x, itemIndex, ItemCount)
							# return

		constInfo.USE_FEED = -1
		return False
	
	def SelectItemSlot(self, itemSlotIndex):
		self.arryfeed[itemSlotIndex] = -1
		self.arrysize[itemSlotIndex] = 0
		self.petslot.ClearSlot(itemSlotIndex)
		self.petslot.RefreshSlot()
		
	def CanMoveItem(self, size, destindex):
		for x in range(0, len(self.arrysize)):
			if self.arrysize[x] > 0:
				for y in range(0, self.arrysize[x]):
					if x+(y*3) == destindex:
						return False
		return True
		
	def SendPetItem(self):
		self.questionDialog = uiCommon.QuestionDialog()
		self.questionDialog.SetText(uiScriptLocale.PET_SYSTEM_FEED_DIALOG)
		self.questionDialog.SetAcceptEvent(ui.__mem_func__(self.ConfirmPetItem))
		self.questionDialog.SetCancelEvent(ui.__mem_func__(self.OnCloseQuestionDialog))
		self.questionDialog.Open()
		
	def ConfirmPetItem(self):
		for i in range(len(self.arryfeed)):
			if self.arryfeed[i] != -1:
				net.SendChatPacket("/cubepetadd add %d %d" % (i, self.arryfeed[i]))
		net.SendChatPacket("/feedcubepet %d" % (constInfo.FEEDWIND))
		for x in range(len(self.arryfeed)):
			self.arryfeed[x] = -1
			self.arrysize[x] = 0
			self.petslot.ClearSlot(x)
			self.petslot.RefreshSlot()
		self.OnCloseQuestionDialog()
