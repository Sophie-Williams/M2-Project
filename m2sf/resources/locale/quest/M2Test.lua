quest M2Test begin
	state start begin

		-- KO

		when 50619.mining begin
			syschat("Vous venez de Miner 50619 !")
		end
		when 19.remove begin
			syschat("--------------- (19) ---------------")
		end
		when 10.remove begin
			syschat("--------------- (10) ---------------")
		end
		
		-- OK

		when respawn begin
			syschat("Vous venez de respawn !")
		end
		when refine_success begin
			syschat("Succ�s : Vous venez de raffiner...")
		end
		when refine_failed begin
			syschat("Echec : Vous venez de raffiner...")
		end
		when info or button begin
			say("MiaW")
		end
		when mining_success begin
			syschat("Succ�s : Vous venez de Miner !")
		end
		when mining_failed begin
			syschat("Echec : Vous venez de Miner !")
		end
		when fishing_success begin
			syschat("Succ�s : Vous venez de p�cher...")
		end
		when fishing_failed begin
			syschat("Echec : Vous venez de p�cher...")
		end
		when 101.dies begin
			syschat("Vous �tes mort par 101...")
		end
		when destroy begin
			syschat("Vous avez d�truit un item !")
		end
		when death begin
			syschat("Vous �tes mort...")
		end
		when death_by_player begin
			syschat("Vous �tes mort... Par un joueur !")
		end
		when death_by_monster begin
			syschat("Vous �tes mort... Par un monstre !")
		end
	end
end