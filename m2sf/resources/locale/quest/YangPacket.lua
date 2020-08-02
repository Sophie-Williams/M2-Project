quest YangPacket begin
	state start begin
		when 38010.use begin
			random = number(1, pc.get_level())
			luck = number(1, 9)
			gold = math.ceil(((pc.get_level() * random) * luck))

			pc.change_money(gold)
			item.remove()
		end

		when 30093.use or 30094.use or 30095.use or 30096.use begin
			choice = number(1, 2)

			random = number(1, pc.get_level())
			luck = number(1, 9)
			gold = math.ceil(((pc.get_level() * random) * luck))

			next_exp = pc.get_next_exp()
			one_percent_exp = next_exp / 100
			exp = one_percent_exp * luck

			if choice == 1 then
				pc.change_money(gold)
			else
				pc.give_exp2(exp)
			end

			pc.remove_item(item.get_vnum(), 1)
		end

	end
end