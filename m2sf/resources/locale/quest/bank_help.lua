quest bank_help begin
	state start begin
		when login or levelup with pc.level >= 30 begin
			set_state(maga)
		end
	end

	state maga begin
		when letter begin
			local v = find_npc_by_vnum(9005)
			if v!= 0 then
				target.vid("__TARGET__", v, "Magasinier.")
			end
		end
		when __TARGET__.target.click begin
			target.delete("__TARGET__")
			say_title(M2SF.helpbank.title_1)
			say(mob_name(9005))
			say(M2SF.helpbank.say_1)
			wait()
			say_title(M2SF.helpbank.title_1)
			say(pc.name)
			say(M2SF.helpbank.say_2)
			wait()
			say_title(M2SF.helpbank.title_1)
			say(mob_name(9005))
			say(M2SF.helpbank.say_3)
			wait()
			say_title(M2SF.helpbank.title_1)
			say(pc.name)
			say(M2SF.helpbank.say_4)
			wait()
			say_title(M2SF.helpbank.title_1)
			say(mob_name(9005))
			say(M2SF.helpbank.say_5)
			wait()
			say_title(M2SF.helpbank.title_1)
			say(pc.name)
			say(M2SF.helpbank.say_6)
			set_state(cheforc)
		end
	end

	state cheforc begin
		when letter begin
			setskin(NOWINDOW)
			makequestbutton(M2SF.helpbank.title_1)
			q.set_title (M2SF.helpbank.title_1)
			q.start()
		end
		when info or button begin
			say_title(M2SF.helpbank.title_1)
			say(M2SF.helpbank.say_7)
		end
		when 691.kill begin
			say_title(M2SF.helpbank.title_2)
			say(M2SF.helpbank.say_8)
			set_state(orc_reward)
		end
	end
	state orc_reward begin
		when letter begin
			setskin(NOWINDOW)
			makequestbutton(M2SF.helpbank.title_1)
			q.set_title (M2SF.helpbank.title_1)
			q.start()

			local v = find_npc_by_vnum(9005)
			if v!= 0 then
			else
				target.vid("__TARGET__",v,"Magasinier.")
			end
		end
		when info or button begin
			say_title(M2SF.helpbank.title_1)
			say(M2SF.helpbank.say_9)
		end
		when __TARGET__.target.click or
			9005.chat.M2SF.helpbank.title_6 begin
			target.delete("__TARGET__")
			say_title(M2SF.helpbank.title_1)
			say(mob_name(9005))
			say(M2SF.helpbank.say_10)
			pc.give_item2("50723", 5)
			say_reward(M2SF.helpbank.say_reword_1)
			clear_letter()
			set_state(maga1)
		end
	end
	state maga1 begin
		when letter begin
			local v = find_npc_by_vnum(9005)
			if v!= 0 then
				target.vid("__TARGET__", v, "Magasinier.")
			end
		end
		when __TARGET__.target.click begin
			target.delete("__TARGET__")
			say_title(M2SF.helpbank.title_1)
			say(mob_name(9005))
			say(M2SF.helpbank.say_11)
			wait()
			say_title(M2SF.helpbank.title_1)
			say(pc.name)
			say(M2SF.helpbank.say_12)
			wait()
			say_title(M2SF.helpbank.title_1)
			say(mob_name(9005))
			say(M2SF.helpbank.say_13)
			wait()
			say_title(M2SF.helpbank.title_1)
			say(pc.name)
			say(M2SF.helpbank.say_14)
			set_state(golem)
		end
	end

	state golem begin
		when letter begin
			setskin(NOWINDOW)
			makequestbutton(M2SF.helpbank.title_1)
			q.set_title (M2SF.helpbank.title_1)
			q.start()
		end
		when info or button begin
			say_title(M2SF.helpbank.title_1)
			say(M2SF.helpbank.say_15)
			set_state( killgolem )
			pc.setqf("state", 0)
			q.set_counter(M2SF.helpbank.count_1, 0)
		end
	end
	state killgolem begin
		when letter begin
			send_letter(M2SF.helpbank.title_1)
		end
		when button or info begin
			say_title(M2SF.helpbank.title_1)
			say(M2SF.helpbank.say_16)
			say_reward(M2SF.helpbank.say_reword_2..pc.getqf("state"))
			say("")
		end
		when 1107.kill begin
			local count = pc.getqf("state") + 1

			if count <= 5 then
				pc.setqf("state", count)
				q.set_counter(M2SF.helpbank.count_2, 5 - count)

				if count == 5 then
					say_title(M2SF.helpbank.title_1)
					say(M2SF.helpbank.say_17)
					set_state(golem_reward)
				end
			end
		end
	end
	state golem_reward begin
		when letter begin
			setskin(NOWINDOW)
			makequestbutton(M2SF.helpbank.title_1)
			q.set_title (M2SF.helpbank.title_1)
			q.start()

			local v = find_npc_by_vnum(9005)
			if v!= 0 then
			else
				target.vid("__TARGET__",v,"Magasinier.")
			end
		end
		when info or button begin
			say_title(M2SF.helpbank.title_3)
			say(M2SF.helpbank.say_18)
		end
		when __TARGET__.target.click or
			9005.chat.M2SF.helpbank.title_5 begin
			target.delete("__TARGET__")
			say_title(M2SF.helpbank.title_1)
			say(mob_name(9005))
			say(M2SF.helpbank.say_19)
			pc.give_item2("50724", 5)
			say_reward(M2SF.helpbank.say_reword_3)
			clear_letter()
			set_state(maga2)
		end
	end

	state maga2 begin
		when letter begin
			local v = find_npc_by_vnum(9005)
			if v!= 0 then
				target.vid("__TARGET__", v, "Magasinier.")
			end
		end
		when __TARGET__.target.click begin
			target.delete("__TARGET__")
			say_title(M2SF.helpbank.title_1)
			say(mob_name(9005))
			say(M2SF.helpbank.say_20)
			wait()
			say_title(M2SF.helpbank.title_1)
			say(pc.name)
			say(M2SF.helpbank.say_27)
			wait()
			say_title(M2SF.helpbank.title_1)
			say(mob_name(9005))
			say(M2SF.helpbank.say_21)
			wait()
			say_title(M2SF.helpbank.title_1)
			say(pc.name)
			say(M2SF.helpbank.say_22)
			set_state(seigneur)
		end
	end

	state seigneur begin
		when letter begin
			setskin(NOWINDOW)
			makequestbutton(M2SF.helpbank.title_1)
			q.set_title (M2SF.helpbank.title_1)
			q.start()
		end
		when info or button begin
			say_title(M2SF.helpbank.title_1)
			say(M2SF.helpbank.say_23)
		end
		when 5163.kill begin
			say_title(M2SF.helpbank.title_1)
			say(M2SF.helpbank.say_24)
			set_state(seigneursinge_reward)
		end
	end
	state seigneursinge_reward begin
		when letter begin
			setskin(NOWINDOW)
			makequestbutton(M2SF.helpbank.title_1)
			q.set_title (M2SF.helpbank.title_1)
			q.start()

			local v = find_npc_by_vnum(9005)
			if v!= 0 then
			else
				target.vid("__TARGET__",v,"Magasinier.")
			end
		end
		when info or button begin
			say_title(M2SF.helpbank.title_1)
			say(M2SF.helpbank.say_25)
		end
		when __TARGET__.target.click or
			9005.chat.M2SF.helpbank.title_4 begin
			target.delete("__TARGET__")
			say_title(M2SF.helpbank.title_1)
			say(mob_name(9005))
			say(M2SF.helpbank.say_26)
			pc.give_item2("72320", 2)
			say_reward(M2SF.helpbank.say_reword_4)
			clear_letter()
			set_state(__COMPLETE__)
		end
	end
	state __COMPLETE__ begin
	end
end