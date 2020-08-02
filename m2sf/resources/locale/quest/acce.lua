quest acce begin
	state start begin
		when 13999.chat.M2SF.sash.title_6 begin
			say_title(mob_name(13999))
			say(M2SF.sash.say_19)
		end

		when 13999.chat.M2SF.sash.title_5 begin
			say_title(mob_name(13999))
			say(M2SF.sash.say_18)
			local confirm = select(M2SF.sash.select_yes, M2SF.sash.select_no)
			if confirm == 2 then
				return
			end

			setskin(NOWINDOW)
			pc.open_acce(true)
		end

		when 13999.chat.M2SF.sash.title_4 begin
			say_title(mob_name(13999))
			say(M2SF.sash.say_17)

			local confirm = select(M2SF.sash.select_yes, M2SF.sash.select_no)
			if confirm == 2 then
				return
			end

			setskin(NOWINDOW)
			pc.open_acce(false)
		end
	end
end