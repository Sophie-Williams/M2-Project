quest ServerTime begin
	state start begin
		function ServerCheck()
			local time_server = os.date("%X")
			local month_server = os.date("%m")

			if game.get_event_flag("force_time") == 0 then
				if (((time_server > "19:59:59") and (time_server < "23:59:59")) or ((time_server > "00:00:00") and (time_server < "07:59:59"))) and (game.get_event_flag("xmas_boom") == 0) then
					game.set_event_flag("xmas_boom", 1)
				end

				if ((time_server > "07:59:59") and (time_server < "19:59:59")) and (game.get_event_flag("xmas_boom") == 1) then
					game.set_event_flag("xmas_boom", 0)
				end
			end

			if game.get_event_flag("force_time") == 1 then
				game.set_event_flag("xmas_boom", game.get_event_flag("time_select"))
				game.set_event_flag("force_time", 2)
			end

			if game.get_event_flag("force_snow") == 0 then 
				if ((month_server == "12") or (month_server == "01")) and (game.get_event_flag("xmas_snow") == 0) then
					game.set_event_flag("xmas_snow", 1)
				end

				if ((month_server != "12") or (month_server != "01")) and (game.get_event_flag("xmas_snow") == 1) then
					game.set_event_flag("xmas_snow", 0)
				end
			end

			if game.get_event_flag("force_snow") == 1 then
				game.set_event_flag("xmas_snow", game.get_event_flag("snow_select"))
				game.set_event_flag("force_snow", 2)
			end
		end

		when 40010.use with pc.is_gm() begin
			local server_select = select(
				M2SF.server_time.select_1,	-- 1
				M2SF.server_time.select_2,	-- 2
				M2SF.server_time.select_3,	-- 3
				M2SF.server_time.select_4,	-- 4
				M2SF.server_time.select_5,	-- 5
				M2SF.server_time.select_6	-- 6
			)

			if server_select == 6 then	-- Close
				return
			end

			if server_select == 1 then	-- Jour / Nuit
				game.set_event_flag("force_time", 0)
				ServerTime.ServerCheck()
			end

			if server_select == 2 then	-- Nuit
				game.set_event_flag("force_time", 1)
				game.set_event_flag("time_select", 1)
				game.set_event_flag("xmas_boom", 1)
			end

			if server_select == 3 then	-- Jour
				game.set_event_flag("force_time", 1)
				game.set_event_flag("time_select", 0)
				game.set_event_flag("xmas_boom", 0)
			end

			if server_select == 4 then	-- Neige (On/Off)
				if game.get_event_flag("xmas_snow") == 0 then
					game.set_event_flag("force_snow", 1)
					game.set_event_flag("xmas_snow", 1)
					game.set_event_flag("snow_select", 1)
				elseif game.get_event_flag("xmas_snow") == 1 then
					game.set_event_flag("force_snow", 1)
					game.set_event_flag("xmas_snow", 0)
					game.set_event_flag("snow_select", 0)
				else
					game.set_event_flag("force_snow", 0)
					ServerTime.ServerCheck()
				end
			end

			if server_select == 5 then	-- Neige (Auto)
				game.set_event_flag("force_snow", 0)
				ServerTime.ServerCheck()
			end
		end

		when button or info or respawn or logout or destroy or death or levelup or login or letter or kill or use begin
			ServerTime.ServerCheck()
		end
	end
end