quest M2TeleportRing begin
	state start begin

		function teleport()
	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			s = 1
			t = 1
			u = 1

			w = {
				{0, 0},
				{0, 0},
				{0, 0},
			}

			x = {
				{0, 0},
				{0, 0},
				{0, 0},
			}

			y = {
				{0, 0},
				{0, 0},
				{0, 0},
			}

			z = {
				{
					{
						{0, 0},
						{0, 0},
						{0, 0},
					},
				},
			}

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			e = pc.get_empire()

			random = number(1, pc.get_level())
			luck = number(1, 9)
			price = math.ceil(((pc.get_level() * random) / luck))

			check_price = pc.gold > price

			map_1_list = {
				M2SF.teleport.map_1,
				M2SF.teleport.map_2,
				M2SF.teleport.map_3,
			}

			map_2_list = {
				M2SF.teleport.map_17,
				M2SF.teleport.map_18,
				M2SF.teleport.map_19,
			}

			map_3_list = {
				M2SF.teleport.map_4,
				M2SF.teleport.map_5,
				M2SF.teleport.map_6,
			}

			map_4_list = {
				M2SF.teleport.map_7,
				M2SF.teleport.map_8,
				M2SF.teleport.map_9,
			}

			map_6_list = {
				M2SF.teleport.map_10,
				M2SF.teleport.map_11,
				M2SF.teleport.map_12,
			}

			map_1 = map_1_list[e]
			map_2 = map_2_list[e]
			map_3 = map_3_list[e]
			map_4 = map_4_list[e]
			map_6 = map_6_list[e]

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			s = select (
				map_1,							-- 1 (Map 1)
				map_3,							-- 2 (Map 2)
				map_4,							-- 3 (Map 3)
				M2SF.teleport.map_13,			-- 4 (Singes)
				map_6,							-- 5 (Map 4)
				map_2,							-- 6 (Vallées)
				M2SF.teleport.map_55,			-- 7 (Temple)
				M2SF.teleport.map_21,			-- 8
				M2SF.teleport.map_22,			-- 9
				M2SF.teleport.map_23,			-- 10
				M2SF.teleport.map_24,			-- 11
				M2SF.teleport.map_25,			-- 12
				M2SF.teleport.map_26,			-- 13
				M2SF.teleport.map_27,			-- 14
				M2SF.teleport.map_31,			-- 15
				M2SF.teleport.map_32,			-- 16
				M2SF.teleport.map_33,			-- 17
				M2SF.teleport.map_36,			-- 18
				M2SF.teleport.map_37,			-- 19
				M2SF.teleport.map_38,			-- 20
				M2SF.teleport.map_39,			-- 21
				M2SF.teleport.map_40,			-- 22
				M2SF.teleport.map_41,			-- 23
				M2SF.teleport.map_46,			-- 24
				M2SF.teleport.map_47,			-- 25
				M2SF.teleport.map_48,			-- 26
				M2SF.teleport.map_49,			-- 27
				M2SF.teleport.map_50,			-- 28
				M2SF.teleport.map_51,			-- 29
				M2SF.teleport.close				-- 30
			)

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			if s == 30 then
				return
			end

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			-- Donjon des Singes
			if s == 4 then
				t = select (
					M2SF.teleport.map_14,
					M2SF.teleport.map_15,
					M2SF.teleport.map_16,
					M2SF.teleport.close
				)

				if t == 4 then
					return
				end

				y = {
				-- Donjon des Singes (F)
					{775200, 448200},
					{852100, 448200},
					{928900, 448200},
				}

				x = {
				-- Donjon des Singes (F)
					{y[e][1], y[e][2]},
				-- Donjon des Singes (M)
					{135200, 653200},
				-- Donjon des Singes (D)
					{135300, 729900},
				}
			end

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			-- Donjon des Arraignées
			if s == 14 then
				t = select (
					M2SF.teleport.map_28,
					M2SF.teleport.map_29,
					M2SF.teleport.map_30,
					M2SF.teleport.close
				)

				if t == 4 then
					return
				end

				x = {
				-- Donjon des Arraignées 1
					{60000, 496000},
				-- Donjon des Arraignées 2
					{703800, 462500},
				-- Donjon des Arraignées 3
					{95900, 571000},
				}
			end

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			-- Grotte de l'Exil
			if s == 17 then
				t = select (
					M2SF.teleport.map_34,
					M2SF.teleport.map_35,
					M2SF.teleport.close
				)

				if t == 3 then
					return
				end

				x = {
				-- Grotte de l'Exil 1
					{0, 1203200},
				-- Grotte de l'Exil 2
					{241800, 1275000},
				}
			end

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			-- Zone de Guerre
			if s == 23 then
				t = select (
					M2SF.teleport.map_42,
					M2SF.teleport.map_43,
					M2SF.teleport.map_44,
					M2SF.teleport.map_45,
					M2SF.teleport.close
				)

				if t == 5 then
					return
				end

				x = {
				-- Zone de Guerre 1
					{307700, 65500},
				-- Zone de Guerre 2
					{972800, 102400},
				-- Zone de Guerre 3
					{921600, 153600},
				-- Zone de Guerre 4
					{972800, 153600},
				}
			end

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			-- OX
			if s == 25 then
				if game.get_event_flag("oxevent_status") == 0 then
					syschat(M2SF.teleport.not_ox)
					return
				elseif game.get_event_flag("oxevent_status") == 2 then
					t = select (
						M2SF.teleport.ox_observer,
						M2SF.teleport.close
					)

					if t == 2 then
						return
					end

					x = {
					-- Observer
						{896300, 28900},
					}
				elseif game.get_event_flag("oxevent_status") == 1 then
					t = select (
						M2SF.teleport.ox_participate,
						M2SF.teleport.ox_observer,
						M2SF.teleport.close
					)

					if t == 3 then
						return
					end

					x = {
					-- Participer
						{896500, 24600},
					-- Observer
						{896300, 28900},
					}
				end
			end

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			-- T2
			if s == 28 then
				t = select (
					M2SF.teleport.pos_1,
					M2SF.teleport.pos_2,
					M2SF.teleport.close
				)

				if t == 3 then
					return
				end

				x = {
				-- Postion 1
					{13500, 7000},
				-- Postion 2
					{24000, 18300},
				}
			end

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			-- Sungzi
			if s == 29 then
				t = select (
					M2SF.teleport.map_52,
					M2SF.teleport.map_53,
					M2SF.teleport.map_54,
					M2SF.teleport.close
				)

				if t == 4 then
					return
				end

				if t >= 1 and t <= 3 then
					u = select (
						M2SF.teleport.map_51,
						M2SF.teleport.pass_1,
						M2SF.teleport.pass_2,
						M2SF.teleport.close
					)
				end

				if u == 4 then
					return
				end

				z = {
				-- Sungzi (Flame)
					{
					-- Sungzi
						{
						-- A
							{953700, 18200},
						-- B
							{936100, 21500},
						-- C
							{947700, 37300},
						},
					-- Passage 1
						{
						-- A
							{1148900, 118400},
						-- B
							{1148900, 220800},
						-- C
							{1148900, 323200},
						},
					-- Passage 2
						{
						-- A
							{1150300, 183400},
						-- B
							{1150300, 285800},
						-- C
							{1150300, 388200},
						},
					},
				-- Sungzi (Snow)
					{
					-- Sungzi
						{
						-- A
							{1212400, 19200},
						-- B
							{1188800, 17400},
						-- C
							{1195800, 44900},
						},
					-- Passage 1
						{
						-- A
							{1207600, 112500},
						-- B
							{1207600, 214900},
						-- C
							{1207600, 317300},
						},
					-- Passage 2
						{
						-- A
							{1200700, 168700},
						-- B
							{1200700, 271100},
						-- C
							{1200700, 373500},
						},
					},
				-- Sungzi (Desert)
					{
					-- Sungzi
						{
						-- A
							{1284100, 20300},
						-- B
							{1249200, 21600},
						-- C
							{1269800, 57300},
						},
					-- Passage 1
						{
						-- A
							{1241400, 142100},
						-- B
							{1241400, 244500},
						-- C
							{1241400, 346900},
						},
					-- Passage 2
						{
						-- A
							{1239400, 190400},
						-- B
							{1239400, 292800},
						-- C
							{1239400, 395200},
						},
					},
				}

				x = {
				-- Sungzi
					{z[t][u][e][1], z[t][u][e][2]},
				-- Postion 1
					{z[t][u][e][1], z[t][u][e][2]},
				-- Postion 2
					{z[t][u][e][1], z[t][u][e][2]},
				}
			end

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			-- All
			w = {
			-- Map 1
				{
					{474300, 954800},
					{63800, 166400},
					{959900, 269200},
				},
			-- Map 3
				{
					{353100, 882900},
					{145500, 240000},
					{863900, 246000},
				},
			-- Map 4
				{
					{128500, 1000},
					{179500, 1000},
					{271800, 13000},
				},
			-- Donjon des Singes
				{
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
				},
			-- Map 6
				{
					{230500, 232000},
					{640100, 411200},
					{281700, 846400},
				},
			-- Map 2 ( Vallées )
				{
					{402100, 673900},
					{113200, 132500},
					{725500, 421600},
				},
			-- Temple de la Vallée
				{
					{553600, 143600},
					{553600, 143600},
					{553600, 143600},
				},
			-- Desert de Yongbi
				{
					{217800, 627200},
					{221900, 502700},
					{344000, 502500},
				},
			-- Mont Sohan
				{
					{434200, 290600},
					{375200, 174900},
					{491800, 173600},
				},
			-- Terre de Feu
				{
					{599400, 756300},
					{597800, 622200},
					{730700, 689800},
				},
			-- Tour des démons
				{
					{216400, 727100},
					{216400, 727100},
					{216400, 727100},
				},
			-- Map Foret
				{
					{288700, 5700},
					{288700, 5700},
					{288700, 5700},
				},
			-- Map Bois rouge
				{
					{1119500, 701},
					{1119500, 701},
					{1119500, 701},
				},
			-- Donjon des Arraignées
				{
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
				},
			-- Terre des Ogres
				{
					{1059000, 726200},
					{1059000, 726200},
					{1059000, 726200},
				},
			-- Geant
				{
					{828300, 763500},
					{828300, 763500},
					{828300, 763500},
				},
			-- Grotte de l'Exil
				{
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
				},
			-- Catacombes du Diable
				{
					{315200, 1209200},
					{315200, 1209200},
					{315200, 1209200},
				},
			-- Bay Black Sand
				{
					{1086900, 1655800},
					{1086900, 1655800},
					{1086900, 1655800},
				},
			-- Cape The Dragon Head
				{
					{1104300, 1788500},
					{1104300, 1788500},
					{1104300, 1788500},
				},
			-- Dawnistood
				{
					{1226300, 1681100},
					{1226300, 1681100},
					{1226300, 1681100},
				},
			-- Thunder
				{
					{1134500, 1654600},
					{1134500, 1654600},
					{1134500, 1654600},
				},
			-- Zone de Guerre
				{
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
				},
			-- GM
				{
					{105100, 9900},
					{105100, 9900},
					{105100, 9900},
				},
			-- OX
				{
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
				},
			-- Duel
				{
					{857400, 4000},
					{857400, 4000},
					{857400, 4000},
				},
			-- T1
				{
					{46900, 45300},
					{20800, 55800},
					{45300, 83500},
				},
			-- T2
				{
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
				},
			-- Sungzi
				{
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
					{x[t][1], x[t][2]},
				},
			}

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------

			if check_price then			
				if pc.getqf("use") == 70058 then
					item.set_socket(1, item.get_socket(1) - 1)
					pc.setqf("limit_time", 30 * 1 + pc.get_playtime())
				end

				if item.get_socket(1) == 0 and pc.getqf("use") == 70058 then
					syschat(M2SF.teleport.remove_item)
					item.remove()
				end

				pc.change_money(-price)
				pc.warp(w[s][e][1], w[s][e][2])
			else
				syschat(M2SF.teleport.not_enough_1)
				syschat(price..M2SF.teleport.not_enough_2)
			end

	--------------------------------------------------
	--------------------------------------------------
	--------------------------------------------------
		end

		when 40008.use begin
			pc.setqf("use", 40008)
			M2TeleportRing.teleport()
		end

		when 70058.use begin
			pc.setqf("use", 70058)
			
			if item.get_socket(0) == 0 then
				item.set_socket(0, 1)
				item.set_socket(1, 50)
			end

			if item.get_socket(1) == 0 then
				syschat(M2SF.teleport.remove_item)
				item.remove()
			else
				if pc.getqf("limit_time") > pc.get_playtime() then
					syschat(M2SF.teleport.limit_time)
				else
					pc.setqf("limit_time", 0)
					M2TeleportRing.teleport()
				end
			end
		end
	end
end
