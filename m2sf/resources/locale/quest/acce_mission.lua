quest acce_mission begin
	state start begin
		when login or levelup with pc.get_level() >= 30 begin
			set_state("information")
		end
	end

	state information begin
		when enter begin
			pc.setqf("time_to_wait", 0)
			pc.setqf("collect_count", 0)
		end

		when letter begin
			local v = find_npc_by_vnum(13999)
			if v != 0 then
				target.vid("theowahdan", v, "Theowahdan")
			end

			send_letter(M2SF.sash.title_1)
		end

		when button or info begin
			say_title(mob_name(13999))
			say(M2SF.sash.say_1)
		end

		when theowahdan.target.click or 13999.chat.M2SF.sash.title_2 begin
			target.delete("theowahdan")
			
			say_title(mob_name(13999))
			say(M2SF.sash.say_2)
			wait()
			say_title(mob_name(13999))
			say(M2SF.sash.say_3)
			set_state("go_to_disciple")
		end
	end

	state go_to_disciple begin
		when letter begin
			local v = find_npc_by_vnum(20355)
			if v != 0 then
				target.vid("capitan", v, "Capitan")
			end
			
			send_letter(M2SF.sash.title_2)
		end

		when button or info begin
			say_title(M2SF.sash.title_2)
			say(M2SF.sash.say_4)
		end
		
    	when capitan.target.click or 20355.chat.M2SF.sash.title_2 begin
			target.delete("capitan")
			
			say_title(mob_name(20355))
			say(M2SF.sash.say_5)
			wait()
			say_title(mob_name(20355))
			say(M2SF.sash.say_6)

			local agree = select(M2SF.sash.select_yes, M2SF.sash.select_no)
			if agree == 1 then
				pc.setqf("time_to_wait", 60 * 1 + pc.get_playtime())
				set_state("time_to_wait")
			end
		end
	end
	
	state time_to_wait begin
		when letter begin
			local v = find_npc_by_vnum(20355)
			if v != 0 then
				target.vid("capitan", v, "Capitan")
			end
			
			send_letter(M2SF.sash.title_2)
		end
		
		when button or info begin
			say_title(M2SF.sash.title_2)
			say(M2SF.sash.say_7)
			if pc.getqf("time_to_wait") > pc.get_playtime() then
				local time_to_wait = pc.getqf("time_to_wait") - pc.get_playtime()
				say(M2SF.sash.say_8..time_to_wait..M2SF.sash.say_9)
			end
		end
		
		when 20355.chat.gameforge.collect_reset.chat_title with pc.is_gm() begin
			pc.setqf("time_to_wait", 0)
			syschat(gameforge.collect_reset.say_reward)
			return 2
		end
		
		when capitan.target.click or 20355.chat.M2SF.sash.title_2 begin
			target.delete("capitan")
			
			say_title(mob_name(20355))
			if pc.getqf("time_to_wait") > pc.get_playtime() then
				local time_to_wait = pc.getqf("time_to_wait") - pc.get_playtime()
				say(M2SF.sash.say_10)
				say(M2SF.sash.say_8..time_to_wait..M2SF.sash.say_9)
			else
				pc.setqf("time_to_wait", 0)
				say(M2SF.sash.say_11)
				if pc.getqf("collect_count") >= 9 then
					pc.setqf("collect_count", pc.getqf("collect_count") + 1)
					set_state("__complete")
				else
					pc.setqf("collect_count", pc.getqf("collect_count") + 1)
					set_state("go_to_disciple")
				end
				
				pc.give_item2(85000, 1)
			end
		end
	end
	
	state __complete begin
		when enter begin
			pc.delqf("time_to_wait")
			pc.delqf("collect_count")
		end
		
		when letter begin
			local v = find_npc_by_vnum(13999)
			if v != 0 then
				target.vid("theowahdan_r", v, "Theowahdan")
			end
			
			send_letter(M2SF.sash.title_3)
		end
		
		when button or info begin
			say_title(mob_name(13999))
			say(M2SF.sash.say_12)
		end
		
		when theowahdan_r.target.click or 20084.chat.M2SF.sash.title_2 begin
			target.delete("theowahdan_r")
			
			say_title(mob_name(13999))
			say(M2SF.sash.say_13)
			wait()
			say_title(mob_name(13999))
			if pc.count_item(85000) < 10 then
				say(M2SF.sash.say_14)
				set_state("go_to_disciple")
			else
				pc.remove_item(85000, 10)
				pc.give_item2(85001, 1)
				say(M2SF.sash.say_15)
				say_reward(M2SF.sash.say_reward_1)
				say(M2SF.sash.say_16)
				set_state("information")
			end
		end
	end
end