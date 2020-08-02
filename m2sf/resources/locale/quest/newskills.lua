quest new7and8th_skills begin
    state start begin
		when 50514.use begin
			say_title(item_name(50514))
			say("")
			if pc.get_skill_group() == 0 then
				say(M2SF.newskills.say_1)
				return
			end
			
			local check_learned = 0
			local help_skill_list = {
				{{236}, {240},},
				{{237}, {241},},
				{{238}, {242},},
				{{239}, {243},},
				{{244},},
			}
			
			local skill_list = help_skill_list[pc.get_job() + 1][pc.get_skill_group()]
			for i = 1, table.getn(skill_list) do
				skill_vnum = skill_list[i]
				if pc.get_skill_level(skill_vnum) > 0 then
					check_learned = 1
				end
			end
			
			if check_learned == 1 then
				say(M2SF.newskills.say_2)
				return
			end
			
			help_skill_list_name = {
				[236] = M2SF.newskills.say_236,
				[237] = M2SF.newskills.say_237,
				[238] = M2SF.newskills.say_238,
				[239] = M2SF.newskills.say_239,
				[240] = M2SF.newskills.say_240,
				[241] = M2SF.newskills.say_241,
				[242] = M2SF.newskills.say_242,
				[243] = M2SF.newskills.say_243,
				[244] = M2SF.newskills.say_244
			}
			
			local skill_vnum_list = {}
			local skill_name_list = {}
			for i = 1, table.getn(skill_list) do
				skill_vnum = skill_list[i]
				if pc.get_skill_level(skill_vnum) < 1 then
					table.insert(skill_vnum_list, skill_vnum)
					table.insert(skill_name_list, help_skill_list_name[skill_vnum])
				end
			end
			
			if table.getn(skill_vnum_list) == 0 then
				say(M2SF.newskills.say_3)
				return
			end
			
			table.insert(skill_name_list, M2SF.newskills.say_close)
			say(M2SF.newskills.say_4)
			local i = select_table(skill_name_list)
			if i == table.getn(skill_name_list)then
				return
			end
			
			local name = skill_name_list[i]
			local vnum = skill_vnum_list[i]
			say_title(item_name(50514))
			say("")
			say(string.format(M2SF.newskills.say_5, name))
			local confirm = select(M2SF.newskills.say_yes, M2SF.newskills.say_no)
			if confirm == 1 then
				pc.remove_item(item.get_vnum(), 1)
				pc.set_skill_level(vnum, 1)
				return
			end
			
			return
		end
		
		when 50515.use begin
			say_title(item_name(50515))
			say("")
			if pc.get_skill_group() == 0 then
				say(M2SF.newskills.say_6)
				return
			end
			
			local check_learned = 0
			local anti_skill_list = {221, 222, 223, 224, 225, 226, 227, 228, 229}
			for i = 1, table.getn(anti_skill_list) do
				skill_vnum = anti_skill_list[i]
				if pc.get_skill_level(skill_vnum) > 0 then
					check_learned = 1
				end
			end
			
			if check_learned == 1 then
				say(M2SF.newskills.say_7)
				return
			end
			
			anti_skill_list_name = {
				[221] = M2SF.newskills.say_221,
				[222] = M2SF.newskills.say_222,
				[223] = M2SF.newskills.say_223,
				[224] = M2SF.newskills.say_224,
				[225] = M2SF.newskills.say_225,
				[226] = M2SF.newskills.say_226,
				[227] = M2SF.newskills.say_227,
				[228] = M2SF.newskills.say_228,
				[229] = M2SF.newskills.say_229
			}
			
			local skill_vnum_list = {}
			local skill_name_list = {}
			for i = 1, table.getn(anti_skill_list) do
				skill_vnum = anti_skill_list[i]
				if pc.get_skill_level(skill_vnum) < 1 then
					table.insert(skill_vnum_list, skill_vnum)
					table.insert(skill_name_list, anti_skill_list_name[skill_vnum])
				end
			end
			
			if table.getn(skill_vnum_list) == 0 then
				say(M2SF.newskills.say_8)
				return
			end
			
			table.insert(skill_name_list, M2SF.newskills.say_close)
			say(M2SF.newskills.say_9)
			wait()
			local i = select_table(skill_name_list)
			if i == table.getn(skill_name_list)then
				return
			end
			
			local name = skill_name_list[i]
			local vnum = skill_vnum_list[i]
			say_title(item_name(50515))
			say()
			say(string.format(M2SF.newskills.say_5, name))
			local confirm = select(M2SF.newskills.say_yes, M2SF.newskills.say_no)
			if confirm == 1 then
				pc.remove_item(item.get_vnum(), 1)
				pc.set_skill_level(vnum, 1)
				return
			end
			
			return
		end
		
		when 50525.use begin
			say_title(item_name(50525))
			say("")
			if pc.get_skill_group() == 0 then
				say(M2SF.newskills.say_10)
				return
			end
			
			if get_time() < pc.getqf("next_time") then
				if not pc.is_skill_book_no_delay() then
					say(M2SF.newskills.say_11)
					return
				end
			end
			
			GRAND_MASTER_SKILL_LEVEL = 30
			PERFECT_MASTER_SKILL_LEVEL = 40
			local check_learned = 0
			local new_skill_list = {221, 222, 223, 224, 225, 226, 227, 228, 229, 236, 237, 238, 239, 240, 241, 242, 243, 244}
			for i = 1, table.getn(new_skill_list) do
				skill_vnum = new_skill_list[i]
				if pc.get_skill_level(skill_vnum) >= GRAND_MASTER_SKILL_LEVEL and pc.get_skill_level(skill_vnum) < PERFECT_MASTER_SKILL_LEVEL then
					check_learned = 1
				end
			end
			
			if check_learned == 0 then
				say(M2SF.newskills.say_12)
				return
			end
			
			new_skill_list_name = {
				[221] = M2SF.newskills.say_221,
				[222] = M2SF.newskills.say_222,
				[223] = M2SF.newskills.say_223,
				[224] = M2SF.newskills.say_224,
				[225] = M2SF.newskills.say_225,
				[226] = M2SF.newskills.say_226,
				[227] = M2SF.newskills.say_227,
				[228] = M2SF.newskills.say_228,
				[229] = M2SF.newskills.say_229,
				[236] = M2SF.newskills.say_236,
				[237] = M2SF.newskills.say_237,
				[238] = M2SF.newskills.say_238,
				[239] = M2SF.newskills.say_239,
				[240] = M2SF.newskills.say_240,
				[241] = M2SF.newskills.say_241,
				[242] = M2SF.newskills.say_242,
				[243] = M2SF.newskills.say_243,
				[244] = M2SF.newskills.say_244
			}
			
			local skill_vnum_list = {}
			local skill_name_list = {}
			for i = 1, table.getn(new_skill_list) do
				skill_vnum = new_skill_list[i]
				if pc.get_skill_level(skill_vnum) >= GRAND_MASTER_SKILL_LEVEL and pc.get_skill_level(skill_vnum) < PERFECT_MASTER_SKILL_LEVEL then
					table.insert(skill_vnum_list, skill_vnum)
					table.insert(skill_name_list, new_skill_list_name[skill_vnum])
				end
			end
			
			if table.getn(skill_vnum_list) == 0 then
				say(M2SF.newskills.say_15)
				return
			end
			
			say(M2SF.newskills.say_14)
			local s = select(M2SF.newskills.say_yes, M2SF.newskills.say_no)	
			if s == 2 then
				return
			end
			
			say_title(item_name(50525))
			say()
			say(M2SF.newskills.say_13)
			table.insert(skill_name_list, M2SF.newskills.say_close)
			local i = select_table(skill_name_list)
			if i == table.getn(skill_name_list)then
				return
			end
			
			local name = skill_name_list[i]
			local vnum = skill_vnum_list[i]
			local level = pc.get_skill_level(vnum)
			local cur_alignment = pc.get_real_alignment()
			local need_alignment = 1000 + 500 * (level - 30)
			
			say_title(item_name(50525))
			say("")
			if cur_alignment <- 19000+need_alignment then
				say_reward(M2SF.newskills.say_16)
				return
			end
			
			if get_time() < pc.getqf("next_time") then
				if pc.is_skill_book_no_delay() then
					pc.remove_skill_book_no_delay()
				else
					say(M2SF.newskills.say_17)
				end
			end
			
			say(string.format(M2SF.newskills.say_24, name))
			local confirm = select(M2SF.newskills.say_yes, M2SF.newskills.say_no)
			if confirm == 1 then
				pc.setqf("next_time", get_time() + 60 * 60 * math.random(12, 24))
				
				say_title(item_name(50525))
				say("")
				if pc.learn_grand_master_skill(vnum) then
					if pc.get_skill_level(vnum) == 40 then
						say(string.format(M2SF.newskills.say_23, name))
					else
						say(string.format(M2SF.newskills.say_22, name, level-30+1+1))
					end
					
					say(M2SF.newskills.say_21)
				else
					pc.change_alignment(-number(need_alignment / 3, need_alignment / 2))
					say(M2SF.newskills.say_20)
				end
				
				pc.remove_item(item.get_vnum(), 1)
			end
			
			return
		end
		
		when 71000.use begin
			say_title(item_name(71000))
			say("")
			if pc.get_skill_group() == 0 then
				say(M2SF.newskills.say_1)
				return
			end
			
			local check_learned = 0
			local new_skill_list = {221, 222, 223, 224, 225, 226, 227, 228, 229, 236, 237, 238, 239, 240, 241, 242, 243, 244}
			for i = 1, table.getn(new_skill_list) do
				skill_vnum = new_skill_list[i]
				if pc.get_skill_level(skill_vnum) > 0 then
					check_learned = 1
				end
			end
			
			if check_learned == 0 then
				say(M2SF.newskills.say_18)
				return
			end
			
			say(M2SF.newskills.say_19)
			local confirm = select(M2SF.newskills.say_yes, M2SF.newskills.say_no)
			if confirm == 1 then
				for i = 1, table.getn(new_skill_list) do
					skill_vnum = new_skill_list[i]
					if pc.get_skill_level(skill_vnum) > 0 then
						pc.set_skill_level(skill_vnum, 0)
					end
				end
				
				pc.remove_item(item.get_vnum(), 1)
			end
			
			return
		end
    end
end