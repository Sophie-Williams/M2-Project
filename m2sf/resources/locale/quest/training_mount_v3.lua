quest training_mount_v3 begin
	state start begin
		function no_level()
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._01_say)
			say()
		end

		function no_riding()
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._41_say)
			say()
		end

		function no_item()
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._02_say)
			say()
		end

		function fail_msg()
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._03_say)
			say()
		end

		when 20349.chat.gameforge.training_mount._04_say begin
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._05_say)
			say()
				wait()
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._06_say)
			say()
				wait()
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._07_say)
			say()
			set_state(main_point)
		end
	end

	state main_point begin
		when 20349.chat.gameforge.training_mount._08_say begin
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._09_say)
			say()
				wait()
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._10_say)
			say()
				wait()
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._11_say)
			say()

			local s = select(
				gameforge.training_mount._12_say,
				gameforge.training_mount._13_say
			)

			if 2 == s then
				return
			end

			if pc.count_item(50067) > 0 or pc.count_item(50068) > 0 then 
				say_title(mob_name(20349))
				say()
				say(gameforge.training_mount._14_say)
				say()
			else 
				training_mount_v3.no_item()
				return
			end

			local s = select(
				gameforge.training_mount._15_say,
				gameforge.training_mount._15_2_say,
				gameforge.training_mount._16_say
			)

			if 1 == s then
				if pc.count_item(50067) == 0 then
					training_mount_v3.no_item()
				elseif pc.level <25 then
					training_mount_v3.no_level()
				else
					say_title(mob_name(20349))
					say()
					say(item_name(50067)..gameforge.training_mount._17_say)
					say()
				end
			elseif 2 == s then
				if  pc.count_item(50068) == 0 then
					training_mount_v3.no_item()
				elseif pc.level <45 then
					training_mount_v3.no_level()
				else
					say_title(mob_name(20349))
					say()
					say(gameforge.training_mount._18_say)
					say()
				end
			elseif 3 == s then
				say_title(mob_name(20349))
				say()
				say(gameforge.training_mount._19_say)
				say()
			end
		end

		when 20349.chat.gameforge.training_mount._23_say  begin
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._24_say)
			say()
				wait()
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._25_say)
			say()
				wait()
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._26_say)
			say()

			local s = select(
				locale.yes,
				locale.no
			)

			if 2 == s then
				return
			end

			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._27_say)
			say()
				wait()

			if pc.count_item(50068) > 0 then
				if horse.get_level() > 1 then 
					say_title(mob_name(20349))
					say()
					say(gameforge.training_mount._28_say)
					say()
						wait()
					say(gameforge.training_mount._29_say)
				else
					say_title(mob_name(20349))
					say()
					say(gameforge.training_mount._30_say)
					say()
				end
			else
				say_title(mob_name(20349))
				say()
				say(gameforge.training_mount._31_say)
				say()
			end	
		end

		when 20349.chat.gameforge.training_mount._46_chat begin
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._42_say)
			say_reward(gameforge.training_mount._43_say)
			say()
		end

		when 20349.take with 52701 == item.vnum or 52702 == item.vnum or 52703 == item.vnum or 52704 == item.vnum or 52705 == item.vnum or 52706 == item.vnum or 52707 == item.vnum or 52708 == item.vnum begin
			say_title(mob_name(20349))
			say()
			say(gameforge.training_mount._44_say)
			say_reward(gameforge.training_mount._45_say)
			say()
				wait()
			say_title(mob_name(20349))
			say()

			local bonus = select(
				gameforge.training_mount._1_bonus,
				gameforge.training_mount._2_bonus,
				gameforge.training_mount._3_bonus,
				gameforge.training_mount._4_bonus,
				gameforge.training_mount._5_bonus,
				gameforge.training_mount._6_close
			)

			if bonus == 1 then
				value = tonumber(1)
			elseif bonus == 2 then
				value = tonumber(2)
			elseif bonus == 3 then
				value = tonumber(3)
			elseif bonus == 4 then
				value = tonumber(4)
			elseif bonus == 5 then
				value = tonumber(5)
			elseif bonus == 6 then
				return
			else
				return
			end

			pc.give_item2(item.get_refine_vnum()+value, 1)
			item.remove()
		end

		when 20349.take with 52031 == item.vnum or 52032 == item.vnum or 52033 == item.vnum or 52034 == item.vnum or 52035 == item.vnum or 52046 == item.vnum or 52047 == item.vnum or 52048 == item.vnum or 52049 == item.vnum or 52050 == item.vnum or 52001 == item.vnum or 52002 == item.vnum or 52003 == item.vnum or 52004 == item.vnum or 52005 == item.vnum or 52016 == item.vnum or 52017 == item.vnum or 52018 == item.vnum or 52019 == item.vnum or 52020 == item.vnum or 52061 == item.vnum or 52062 == item.vnum or 52063 == item.vnum or 52064 == item.vnum or 52065 == item.vnum or 52076 == item.vnum or 52077 == item.vnum or 52078 == item.vnum or 52079 == item.vnum or 52080 == item.vnum or 52091 == item.vnum or 52092 == item.vnum or 52093 == item.vnum or 52094 == item.vnum or 52095 == item.vnum or 52106 == item.vnum or 52107 == item.vnum or 52108 == item.vnum or 52109 == item.vnum or 52110 == item.vnum begin
			if pc.is_riding() == true then
				training_mount_v3.no_riding()
				return
			end

			if pc.level < 25 then
				training_mount_v3.no_level(25)
				return
			end

			if pc.count_item(50067) > 0 then
				say_title(mob_name(20349))
				say()
				say(gameforge.training_mount._20_say)
				say()

				local remain_time = item.get_socket(0)
				local oldvnum = item.get_vnum()

				pc.give_item2_select(item.get_refine_vnum(), 1)

				item.set_socket(0, remain_time)
				item.set_socket(1, 2)

				pc.remove_item(oldvnum, 1)
				pc.remove_item(50067, 1)
			else
				training_mount_v3.no_item()
			end
		end

		when 20349.take with 52036 == item.vnum or 52037 == item.vnum or 52038 == item.vnum or 52039 == item.vnum or 52040 == item.vnum or 52051 == item.vnum or 52052 == item.vnum or 52053 == item.vnum or 52054 == item.vnum or 52055 == item.vnum or 52006 == item.vnum or 52007 == item.vnum or 52008 == item.vnum or 52009 == item.vnum or 52010 == item.vnum or 52021 == item.vnum or 52022 == item.vnum or 52023 == item.vnum or 52024 == item.vnum or 52025 == item.vnum or 52066 == item.vnum or 52067 == item.vnum or 52068 == item.vnum or 52069 == item.vnum or 52070 == item.vnum or 52081 == item.vnum or 52082 == item.vnum or 52083 == item.vnum or 52084 == item.vnum or 52085 == item.vnum or 52096 == item.vnum or 52097 == item.vnum or 52098 == item.vnum or 52099 == item.vnum or 52100 == item.vnum or 52111 == item.vnum or 52112 == item.vnum or 52113 == item.vnum or 52114 == item.vnum or 52115 == item.vnum begin
			if pc.is_riding() == true then
				training_mount_v3.no_riding()
				return
			end

			if pc.level < 45 then
				training_mount_v3.no_level(45)
				return
			end

			if pc.count_item(50068) > 0 then
				say_title(mob_name(20349))
				say()
				say(gameforge.training_mount._21_say)
				say()
					wait()
				say_title(mob_name(20349))
				say()
				say(gameforge.training_mount._22_say)
				say()

				local remain_time = item.get_socket(0)
				local oldvnum = item.get_vnum()

				pc.give_item2_select(item.get_refine_vnum(), 1)

				item.set_socket(0, remain_time)
				item.set_socket(1, 2)

				pc.remove_item(oldvnum, 1)
				pc.remove_item(50068, 1)
			else
				training_mount_v3.no_item()
			end
		end
	end
end