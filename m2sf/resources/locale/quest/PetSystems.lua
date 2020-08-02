quest PetSystems begin

	state start begin

		function get_pet_info(itemVnum)

			pet_info_map = {

			--  [ITEM VNUM] MOB_VNUM, DEFAULT NAME, buff_idx, spawn_effect_idx
				[55701] = { 34041, gameforge.pet_system.petname_34041, 0},
				[55702] = { 34045, gameforge.pet_system.petname_34045, 0},
				[55703] = { 34049, gameforge.pet_system.petname_34049, 0},
				[55704] = { 34053, gameforge.pet_system.petname_34053, 0},
				[55705] = { 34036, gameforge.pet_system.petname_34036, 0},
				[55706] = { 34064, gameforge.pet_system.petname_34064, 0},
				[55707] = { 34073, gameforge.pet_system.petname_34073, 0},
				[55708] = { 34075, gameforge.pet_system.petname_34075, 0},
				[55709] = { 34080, gameforge.pet_system.petname_34080, 0},
				[55710] = { 34043, gameforge.pet_system.petname_34043, 0},
			}

			itemVnum = tonumber(itemVnum)
			return pet_info_map[itemVnum]
		end

		when 55701.use or 55702.use or 55703.use or 55704.use or 55705.use or 55706.use or 55707.use or 55708.use or 55709.use or 55710.use or 55711.use begin

			local pet_info = PetSystems.get_pet_info(item.vnum)

			if null != pet_info then

				local mobVnum = pet_info[1]
				local petName = pet_info[2]

				if true == newpet.is_summon(mobVnum) then
				
					newpet.unsummon(mobVnum)
					syschat(M2SF.pets.unsummon..petName..M2SF.pets.dot)
				else
					if newpet.count_summoned() < 1 then

						newpet.summon(mobVnum, petName, false)
						syschat(M2SF.pets.summon..petName..M2SF.pets.dot)
					else

						syschat(M2SF.pets.already_summon)
					end
				end
			end
		end
	end
end
