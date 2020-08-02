quest M2Exp begin
	state start begin
		when login begin
			if pc.getqf("exp") == 0 then
				pc.unblock_exp()
				-- syschat(m2.system.experience.off)
			elseif pc.getqf("exp") == 1 then
				pc.block_exp()
				syschat(m2.system.experience.on)
			end
		end

		when 40009.use begin
			if pc.getqf("exp") == 0 then
				pc.block_exp()
				pc.setqf("exp", 1)
				syschat(m2.system.experience.on)
			elseif pc.getqf("exp") == 1 then
				pc.unblock_exp()
				pc.setqf("exp", 0)
				syschat(m2.system.experience.off)
			end
		end
	end
end
