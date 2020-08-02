quest book_combi begin
	state start begin
		when 20095.chat.M2SF.skill_book_combinaison._10_npcChat begin
			say(M2SF.skill_book_combinaison._120_say)
		end

		when 20095.chat.M2SF.skill_book_combinaison._120_npcChat begin
			setskin(NOWINDOW)
			cmdchat("OpenSkillbookCombinationDialog")
		end
	end
end