quest system_gaya_0 begin
	state start begin
		when 20503.chat.M2SF.gaya.title_1 begin
			say_title(mob_name(20503))
			say(M2SF.gaya.say_1)
		end

		when 20503.take with pc.count_item(30400) >= 10 begin
			say_title(mob_name(20503))
			say(M2SF.gaya.say_2)
			local option = select(M2SF.gaya.select_yes, M2SF.gaya.select_no)
			if option == 2 then
				return
			elseif option == 1 then
				 game.open_gaya()
			end
		end

		when 20504.chat.M2SF.gaya.title_2 begin
			say_title(mob_name(20504))
			say(M2SF.gaya.say_3)
			local option = select(M2SF.gaya.select_yes, M2SF.gaya.select_no)
			if option == 1 then
				game.open_gaya_market()
			end
		end
	end
end
