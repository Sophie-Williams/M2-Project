quest ServerExp begin
	state start begin
		function ServerToggle()
			if game.get_event_flag("server_exp") == 1 then
				-- pc.block_exp()
				syschat(m2.system.experience.on)
			else
				if pc.getqf("exp") == 0 then
					pc.block_exp()
					pc.setqf("exp", 1)
					syschat(M2SF.server_exp.syschat_1)
				elseif pc.getqf("exp") == 1 then
					pc.unblock_exp()
					pc.setqf("exp", 0)
					syschat(M2SF.server_exp.syschat_2)
				end
			end
		end

		function ServerCheck()
			if game.get_event_flag("server_exp") == 1 then
				-- pc.block_exp()
				syschat(M2SF.server_exp.syschat_1)
			else
				if pc.getqf("exp") == 0 then
					pc.unblock_exp()
				elseif pc.getqf("exp") == 1 then
					pc.block_exp()
					syschat(M2SF.server_exp.syschat_1)
				end
			end
		end

		when login begin
			ServerExp.ServerCheck()
		end

		when 40009.use with not pc.is_gm() begin
			ServerExp.ServerToggle()
		end

		when 40009.use with pc.is_gm() begin
			say_title(item_name(40009))
			say()
			say(M2SF.server_exp.say_1)
			say()

			local server_select = select(
				M2SF.server_exp.select_1,	-- 1
				M2SF.server_exp.select_2,	-- 2
				M2SF.server_exp.select_3,	-- 3
				M2SF.server_exp.select_4	-- 4
			)

			if server_select == 4 then	-- Close
				return
			end

			if server_select == 1 then	-- Toggle
				ServerExp.ServerToggle()
			end

			if server_select == 2 then	-- ON
				game.set_event_flag("server_exp", 1)
				game.set_event_flag("mob_exp", 0)
				notice_all(M2SF.server_exp.notice_1)
			end

			if server_select == 3 then	-- OFF
				game.set_event_flag("server_exp", 0)
				game.set_event_flag("mob_exp", 100)
				notice_all(M2SF.server_exp.notice_2)
			end
		end
	end
end
