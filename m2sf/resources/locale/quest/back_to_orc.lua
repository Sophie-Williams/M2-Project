quest back_to_orc begin
	state start begin
		when 9012.chat.M2SF.orc_teleport.title_1 with pc.get_map_index() == 65 begin
			say_title(mob_name(9012))
			say()
			say(M2SF.orc_teleport.say_1)
			say()
			s = select(M2SF.orc_teleport.select_yes, M2SF.orc_teleport.select_no)

			if 1 == s then
				if pc.get_empire() == 1 then
					pc.warp(332900, 746000)
				end

				if pc.get_empire() == 2 then
					pc.warp(191400, 140900)
				end

				if pc.get_empire() == 3 then
					pc.warp(734300, 336000)
				end
			end
		end
	end
end