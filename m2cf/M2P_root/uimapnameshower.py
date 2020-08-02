import app
import ui
import uiScriptLocale
import localeInfo

LOCALE_PATH = uiScriptLocale.MAPNAME_PATH

class MapNameShower(ui.ExpandedImageBox):

	MAP_NAME_IMAGE =	{}

	STATE_HIDE = 0
	STATE_FADE_IN = 1
	STATE_SHOW = 2
	STATE_FADE_OUT = 3

	def __init__(self):
		self.MAP_NAME_IMAGE = {
			"1/map" : LOCALE_PATH + "1.tga",
			"2/map" : LOCALE_PATH + "2.tga",
			"3/map" : LOCALE_PATH + "3.tga",
			"4/map" : LOCALE_PATH + "4.tga",
			"5/map" : LOCALE_PATH + "5.tga",
			"6/map" : LOCALE_PATH + "6.tga",
			"21/map" : LOCALE_PATH + "21.tga",
			"22/map" : LOCALE_PATH + "22.tga",
			"23/map" : LOCALE_PATH + "23.tga",
			"24/map" : LOCALE_PATH + "24.tga",
			"25/map" : LOCALE_PATH + "25.tga",
			"26/map" : LOCALE_PATH + "26.tga",
			"41/map" : LOCALE_PATH + "41.tga",
			"42/map" : LOCALE_PATH + "42.tga",
			"43/map" : LOCALE_PATH + "43.tga",
			"44/map" : LOCALE_PATH + "44.tga",
			"45/map" : LOCALE_PATH + "45.tga",
			"46/map" : LOCALE_PATH + "46.tga",
			"61/map" : LOCALE_PATH + "61.tga",
			"62/map" : LOCALE_PATH + "62.tga",
			"63/map" : LOCALE_PATH + "63.tga",
			"65/map" : LOCALE_PATH + "65.tga",
			"66/map" : LOCALE_PATH + "66.tga",
			"67/map" : LOCALE_PATH + "67.tga",
			"68/map" : LOCALE_PATH + "68.tga",
			"69/map" : LOCALE_PATH + "69.tga",
			"70/map" : LOCALE_PATH + "70.tga",
			"71/map" : LOCALE_PATH + "71.tga",
			"72/map" : LOCALE_PATH + "72.tga",
			"73/map" : LOCALE_PATH + "73.tga",
			"74/map" : LOCALE_PATH + "74.tga",
			"75/map" : LOCALE_PATH + "85.tga",
			"76/map" : LOCALE_PATH + "76.tga",
			"77/map" : LOCALE_PATH + "77.tga",
			"81/map" : LOCALE_PATH + "81.tga",
			"91/map" : LOCALE_PATH + "91.tga",
			"92/map" : LOCALE_PATH + "92.tga",
			"103/map" : LOCALE_PATH + "103.tga",
			"105/map" : LOCALE_PATH + "105.tga",
			"108/map" : LOCALE_PATH + "108.tga",
			"109/map" : LOCALE_PATH + "109.tga",
			"110/map" : LOCALE_PATH + "110.tga",
			"111/map" : LOCALE_PATH + "111.tga",
			"112/map" : LOCALE_PATH + "112.tga",
			"113/map" : LOCALE_PATH + "113.tga",
			"114/map" : LOCALE_PATH + "114.tga",
			"118/map" : LOCALE_PATH + "118.tga",
			"119/map" : LOCALE_PATH + "119.tga",
			"120/map" : LOCALE_PATH + "120.tga",
			"121/map" : LOCALE_PATH + "121.tga",
			"122/map" : LOCALE_PATH + "122.tga",
			"123/map" : LOCALE_PATH + "123.tga",
			"124/map" : LOCALE_PATH + "124.tga",
			"125/map" : LOCALE_PATH + "125.tga",
			"126/map" : LOCALE_PATH + "126.tga",
			"127/map" : LOCALE_PATH + "127.tga",
			"128/map" : LOCALE_PATH + "128.tga",
			"140/map" : LOCALE_PATH + "140.tga",
			"141/map" : LOCALE_PATH + "141.tga",
			"142/map" : LOCALE_PATH + "142.tga",
			"143/map" : LOCALE_PATH + "143.tga",
			"181/map" : LOCALE_PATH + "181.tga",
			"182/map" : LOCALE_PATH + "182.tga",
			"183/map" : LOCALE_PATH + "183.tga",
			"251/map" : LOCALE_PATH + "251.tga",
			"252/map" : LOCALE_PATH + "252.tga",
		}

		ui.ExpandedImageBox.__init__(self, "TOP_MOST")
		self.AddFlag("not_pick")
		self.__Initialize()

	def __del__(self):
		ui.ExpandedImageBox.__del__(self)

	def __Initialize(self):
		self.floorImage = None
		self.objectiveImage = None
		self.fadeStartTime = 0
		self.state = self.STATE_HIDE
		self.curAlpha = 0.0
		self.SetAlpha(0.0)
		self.SetWindowHorizontalAlignCenter()
		self.SetPosition(0, 80)
		self.Hide()

	def __GetDevilTowerFloor(self, x, y):
		if x > 10000 and y > 58000 and x < 25000 and y < 72000:
			return 1
		elif x > 10000 and y > 35000 and x < 25000 and y < 50000:
			return 2
		elif x > 10000 and y > 10000 and x < 25000 and y < 25000:
			return 3
		elif x > 35000 and y > 61000 and x < 43500 and y < 70500:
			return 4
		elif x > 35000 and y > 38000 and x < 43500 and y < 48000:
			return 5
		elif x > 14000 and y > 14000 and x < 43500 and y < 24500:
			return 6
		elif x > 56000 and y > 60000 and x < 68000 and y < 73000:
			return 7
		elif x > 56000 and y > 38000 and x < 68000 and y < 49000:
			return 8
		elif x > 56000 and y > 13000 and x < 68000 and y < 23000:
			return 9	 
		return 0
	def __GetDevilBase(self, x, y):
		if x > 3000 and y > 4500 and x < 45000 and y < 45000:
			return 1
		elif x > 54000 and y > 3900 and x < 100000 and y < 46200:
			return 2
		elif x > 104800 and y > 3500 and x < 145500 and y < 45800:
			return 3
		elif x > 3100 and y > 54100 and x < 56400 and y < 105800:
			return 4
		elif x > 65000 and y > 54000 and x < 105000 and y < 95500:
			return 5
		elif x > 117500 and y > 57600 and x < 142000 and y < 81000:
			return 6
		elif x > 5000 and y > 104900 and x < 15000 and y < 122000:
			return 7
		return	0
	def ShowMapName(self, mapName, x, y):
		if not self.MAP_NAME_IMAGE.has_key(mapName):
			print " [ERROR] - There is no map name image", mapName
			return

		try:
			self.LoadImage(self.MAP_NAME_IMAGE[mapName])
		except RuntimeError:
			return

		self.__Initialize()

		if mapName == "66/map":
			self.SetPosition(-60, 80)

			self.floorImage = ui.ExpandedImageBox()
			self.floorImage.AddFlag("not_pick")
			self.floorImage.SetWindowHorizontalAlignCenter()
			self.floorImage.SetPosition(100, 80)
			self.floorImage.SetAlpha(0.0)
			self.floorImage.Show()
			# 맵이름 (ex: 아귀동굴) 이미지 로딩 & 표시			
			try:
				floor = self.__GetDevilTowerFloor(x, y)
				print x, y, floor
				self.floorImage.LoadImage(LOCALE_PATH+"devil_%d.tga" % floor)
			except RuntimeError:
				self.SetPosition(0, 80)
				self.floorImage.Hide()
				self.floorImage = None
							
			if localeInfo.IsYMIR() or localeInfo.IsWE_KOREA():	
				self.objectiveImage = ui.ExpandedImageBox()
				self.objectiveImage.AddFlag("not_pick")
				self.objectiveImage.SetWindowHorizontalAlignCenter()
				self.objectiveImage.SetPosition(0, 200)
				self.objectiveImage.SetAlpha(0.0)
				self.objectiveImage.Show()
			
				# 층별 목표 이미지 로딩 & 표시
				# 던전은 현재 몇층인지 알아오는 부분 때문에 하드코딩을 피하기가 힘들다...
				try:
					floor = self.__GetDevilTowerFloor(x, y)
					print x, y, floor
					self.objectiveImage.LoadImage(LOCALE_PATH + mapName + "/obj_%02df.tga" % floor)
				except RuntimeError:
					self.SetPosition(0, 80)
					self.objectiveImage.Hide()
					self.objectiveImage = None
				
		if mapName == "76/map":
			self.SetPosition(-75, 80)

			self.floorImage = ui.ExpandedImageBox()
			self.floorImage.AddFlag("not_pick")
			self.floorImage.SetWindowHorizontalAlignCenter()
			self.floorImage.SetPosition(100, 80)
			self.floorImage.SetAlpha(0.0)
			self.floorImage.Show()

			# 맵이름 (ex: 아귀동굴) 이미지 로딩 & 표시
			try:
				floor = self.__GetDevilBase(x, y)
				print x, y, floor
				self.floorImage.LoadImage(LOCALE_PATH+"devil_%d.tga" % floor)
			except RuntimeError:
				self.SetPosition(0, 80)
				self.floorImage.Hide()
				self.floorImage = None
			if localeInfo.IsYMIR() or localeInfo.IsWE_KOREA():	
				self.objectiveImage = ui.ExpandedImageBox()
				self.objectiveImage.AddFlag("not_pick")
				self.objectiveImage.SetWindowHorizontalAlignCenter()
				self.objectiveImage.SetPosition(0, 200)
				self.objectiveImage.SetAlpha(0.0)
				self.objectiveImage.Show()
				

				# 층별 목표 이미지 로딩 & 표시
				# 던전은 현재 몇층인지 알아오는 부분 때문에 하드코딩을 피하기가 힘들다...
				try:
					floor = self.__GetDevilBase(x, y)
					print x, y, floor
					self.objectiveImage.LoadImage(LOCALE_PATH + mapName + "/obj_%02df.tga" % floor)
				except RuntimeError:
					self.SetPosition(0, 80)
					self.objectiveImage.Hide()
					self.objectiveImage = None
								
		self.state = self.STATE_FADE_IN
		self.fadeStartTime = app.GetTime() + 1.0
		self.Show()

	def Update(self):

		self.SetAlpha(self.curAlpha)
		if self.floorImage:
			self.floorImage.SetAlpha(self.curAlpha)

		if self.objectiveImage:
			self.objectiveImage.SetAlpha(self.curAlpha)

		if self.STATE_FADE_IN == self.state:
			if app.GetTime() > self.fadeStartTime:
				self.curAlpha += 0.05

				if self.curAlpha > 0.9:
					self.state = self.STATE_SHOW
					self.fadeStartTime = app.GetTime() + 5.0

		elif self.STATE_SHOW == self.state:
			if app.GetTime() > self.fadeStartTime:
				self.state = self.STATE_FADE_OUT

		elif self.STATE_FADE_OUT == self.state:
			self.curAlpha -= 0.05

			if self.curAlpha < 0.0001:
				self.Hide()
				if self.floorImage:
					self.floorImage.Hide()
					self.floorImage = None
					
				if self.objectiveImage:
					self.objectiveImage.Hide()
					self.objectiveImage = None					
				return
