quest M2Start begin
	state start begin
		when login begin

			local R = {M2SF.start.kingdom_1, M2SF.start.kingdom_2, M2SF.start.kingdom_3}
			notice_all(M2SF.start.say_1..pc.get_name()..M2SF.start.say_2..R[pc.getempire()]..M2SF.start.say_3)

			set_state(__START__)
		end
	end
	
	state __START__ begin
		when letter begin
			send_letter(M2SF.start.title_1)
		end
	
		when button or info begin
			say_title(pc.name)
			say(M2SF.start.say_4)
			wait()
			say_title(pc.name)
			say(M2SF.start.say_5)

			if pc.job == 0 then

				pc.give_item2(10, 1)
				pc.give_item2(3000, 1)
				pc.give_item2(11200, 1)
				pc.give_item2(12200, 1)
			elseif pc.job == 1 then

				pc.give_item2(10, 1)
				pc.give_item2(1000, 1)
				pc.give_item2(11400, 1)
				pc.give_item2(12340, 1)
				pc.give_item2(2000, 1)
				pc.give_item2(8000, 200)
			elseif pc.job == 2 then

				pc.give_item2(10, 1)
				pc.give_item2(11600, 1)
				pc.give_item2(12480, 1)
			elseif pc.job == 3 then

				pc.give_item2(7000, 1)
				pc.give_item2(11800, 1)
				pc.give_item2(12620, 1)
			end

			pc.give_gold(1)
			pc.give_item2(50187, 1)

			pc.give_item2(13000, 1)
			pc.give_item2(14000, 1)
			pc.give_item2(16000, 1)
			pc.give_item2(17000, 1)
			pc.give_item2(15000, 1)

			set_state(__COMPLETE__)
		end
	end

	state __COMPLETE__ begin
	end
end