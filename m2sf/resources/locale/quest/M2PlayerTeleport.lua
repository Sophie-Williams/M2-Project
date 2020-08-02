quest M2PlayerTeleport begin
	state start begin
		when letter begin
			send_letter(M2SF.player_teleport.title_1)
		end

		when button or info begin	
			say_title(M2SF.player_teleport.title_1)
			say(M2SF.player_teleport.say_1)
			local s = select(M2SF.player_teleport.select_yes, M2SF.player_teleport.select_no)

			if s == 2 then
				set_state(start)
				return
			else
				say_title(M2SF.player_teleport.title_1)
				say(M2SF.player_teleport.say_2)
				local name = input()

				if name == pc.get_name() then
					say_reward(M2SF.player_teleport.say_3)
					set_state(start)
					return -1
				end

				local vid = find_pc_by_name(name)
				if vid == 0 then
					say_reward(name..M2SF.player_teleport.say_4)
					set_state(start)
					return -2
				end

				say_title(M2SF.player_teleport.title_1)
				say(M2SF.player_teleport.say_5)
				wait()

				local player = pc.get_name()
				setskin(NOWINDOW)
				local warp = confirm(vid, M2SF.player_teleport.say_6..player..M2SF.player_teleport.say_7, 30)
				if warp == CONFIRM_OK then
					local s = pc.select(vid)
					local pc_x = pc.get_x()
					local pc_y = pc.get_y()
					local target_x = pc_x * 100
					local target_y = (pc_y - 2) * 100
					test_chat(target_x..target_y)
					pc.select(s)
					pc.warp(target_x, target_y)
					return 0
				else
					say_title(M2SF.player_teleport.title_1)
					say()
					say_reward(M2SF.player_teleport.say_8)
					say()
					set_state(start)
					return 0
				end
			end

			set_state(start)
		end
	end
end