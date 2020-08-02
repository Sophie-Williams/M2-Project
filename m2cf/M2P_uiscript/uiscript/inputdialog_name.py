#########################################
# title_name		: System Pack		#
# filename			: uiscript			#
# author			: Bvural41			#
# version			: Version 0.0.2		#
# date				: 2015 04 11		#
# update			: 2019 02 05		#
#########################################

import uiScriptLocale

ICON_SLOT_FILE = "d:/ymir work/ui/public/Slot_Base.sub"

window = {
	"name" : "InputDialog",
	"x" : 0,
	"y" : 0,
	"style" : ("movable", "float",),
	"width" : 170+32,
	"height" : 146+32,
	"children" :
	(
		{
			"name" : "Board",
			"type" : "board_with_titlebar",
			"x" : 0,
			"y" : 0,
			"width" : 170+32,
			"height" : 146+32,
			"title" : "",
			"children" :
			(
				{
					"name": "ArkaPlan",
					"type": "thinboard",
					"x": 7,
					"y": 31,
					"width": 187,
					"height": 140,
				},
				{
					"name" : "Skill_ETC_Slot",
					"type" : "grid_table",
					"x" : 10,
					"y" : 36,
					"start_index" : 101,
					"x_count" : 5,
					"y_count" : 2,
					"x_step" : 32,
					"y_step" : 32,
					"x_blank" : 5,
					"y_blank" : 4,
					"image" : ICON_SLOT_FILE,
				},
				{
					"name" : "image1",
					"type" : "image",
					"x" : 10,
					"y" : 36,
					"image" : "icon/item/55701.tga",
				},
				{
					"name" : "image1",
					"type" : "image",
					"x" : 47,
					"y" : 36,
					"image" : "icon/item/55702.tga",
				},
				{
					"name" : "image1",
					"type" : "image",
					"x" : 84,
					"y" : 36,
					"image" : "icon/item/55703.tga",
				},
				{
					"name" : "image1",
					"type" : "image",
					"x" : 121,
					"y" : 36,
					"image" : "icon/item/55704.tga",
				},
				{
					"name" : "image1",
					"type" : "image",
					"x" : 158,
					"y" : 36,
					"image" : "icon/item/55705.tga",
				},
				{
					"name" : "image1",
					"type" : "image",
					"x" : 10,
					"y" : 36+37,
					"image" : "icon/item/55706.tga",
				},
				{
					"name" : "image1",
					"type" : "image",
					"x" : 47,
					"y" : 36+37,
					"image" : "icon/item/55707.tga",
				},
				{
					"name" : "image1",
					"type" : "image",
					"x" : 84,
					"y" : 36+37,
					"image" : "icon/item/55707.tga",
				},
				{
					"name" : "image1",
					"type" : "image",
					"x" : 121,
					"y" : 36+37,
					"image" : "icon/item/55708.tga",
				},
				{
					"name" : "image1",
					"type" : "image",
					"x" : 158,
					"y" : 36+37,
					"image" : "icon/item/55709.tga",
				},
				{
					"name" : "info_text",
					"type" : "text",
					"outline" : 1,
					"x" : 15+18,
					"y" : 70+34,
					"text" : "Yeni evcil hayvan ismini giriniz",
				},
				## Input Slot
				{
					"name" : "InputSlot",
					"type" : "slotbar",
					"x" : -1,
					"y" : 86+32,
					"width" : 125,
					"height" : 18,
					"horizontal_align" : "center",
					"children" :
					(
						{
							"name" : "InputValue",
							"type" : "editline",
							"x" : 3,
							"y" : 3,
							"width" : 125,
							"height" : 18,
							"input_limit" : 12,
						},
					),
				},
				## Button
				{
					"name" : "AcceptButton",
					"type" : "button",
					"x" : - 61 - 5 + 30,
					"y" : 112+32,
					"horizontal_align" : "center",
					"text" : uiScriptLocale.OK,
					"default_image" : "d:/ymir work/ui/public/middle_button_01.sub",
					"over_image" : "d:/ymir work/ui/public/middle_button_02.sub",
					"down_image" : "d:/ymir work/ui/public/middle_button_03.sub",
				},
				{
					"name" : "CancelButton",
					"type" : "button",
					"x" : 5 + 30,
					"y" : 112+32,
					"horizontal_align" : "center",
					"text" : uiScriptLocale.CANCEL,
					"default_image" : "d:/ymir work/ui/public/middle_button_01.sub",
					"over_image" : "d:/ymir work/ui/public/middle_button_02.sub",
					"down_image" : "d:/ymir work/ui/public/middle_button_03.sub",
				},
			),
		},
	),
}
