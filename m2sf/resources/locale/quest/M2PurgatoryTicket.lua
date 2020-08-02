quest purgatory_ticket begin
	state start begin
		when login or enter or levelup with pc.get_level() >= 90 begin
			set_state(go_to_disciple)
		end
	end

	state go_to_disciple begin
		when letter begin
			send_letter(M2SF.purgatory_ticket.title_1)
			local v = find_npc_by_vnum(20381)

			if v != 0 then
				target.vid("__TARGET__", v, "Confucius")
			end
		end

		when button or info begin
			say_title(M2SF.purgatory_ticket.title_1)
			say()
			say(M2SF.purgatory_ticket.say_1)
			say()
		end

		when __TARGET__.target.click or
			20381.chat.M2SF.purgatory_ticket.title_1 begin
			target.delete("__TARGET__")

			say_title(mob_name(20381))
			say()
			say(M2SF.purgatory_ticket.say_2)
			say()
			say_reward(mob_name(3102))
			say_reward(mob_name(3103))
			say_reward(mob_name(3104))
			say()
			say_reward(M2SF.purgatory_ticket.say_reward_1)
			say()
			pc.setqf("collect_count", 0)
			clear_letter()
			set_state(go_to_kill)
		end
	end

	state go_to_kill begin
		when 3102.kill or 3103.kill or 3104.kill begin
			pc.setqf("collect_count", pc.getqf("collect_count") + 1)

			if pc.getqf("collect_count") >= 100 then
				set_state(go_to_npc)
			end
		end
	end

	state go_to_npc begin
		when letter begin
			send_letter(M2SF.purgatory_ticket.title_1)
			local v = find_npc_by_vnum(20381)

			if v != 0 then
				target.vid("__TARGET__", v, "Confucius")
			end
		end

		when button or info begin
			say_title(M2SF.purgatory_ticket.title_1)
			say()
			say(M2SF.purgatory_ticket.say_3)
			say()
			clear_letter()
		end

		when __TARGET__.target.click or
			20381.chat.M2SF.purgatory_ticket.title_1 begin
			target.delete("__TARGET__")

			say_title(mob_name(20381))
			say()
			say(M2SF.purgatory_ticket.say_4)
			say()
			say_reward(M2SF.purgatory_ticket.say_reward_1)
			say()
			pc.give_item2(71175, 1)
			pc.setqf("collect_count", 0)
			pc.setqf("duration",get_time() + 60 * 60 * 24)
			set_state(wait_to_time)
		end
	end

	state wait_to_time begin
		when login or enter or levelup or logout or kill begin
			if get_time() > pc.getqf("duration") then
				set_state(go_to_disciple)
			end
		end
	end
end