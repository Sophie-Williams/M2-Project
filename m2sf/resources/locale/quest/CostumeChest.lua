quest CostumeChest begin
	state start begin
		when 30334.use begin
			say_title(item_name(30334))
		
			local s = select(
				item_name(45206),
				item_name(45207),
				item_name(45208),
				item_name(45209)
			)

			if s == 1 then
				pc.give_item2(45206)
				item.remove()
			end

			if s == 2 then
				pc.give_item2(45207)
				item.remove()
			end

			if s == 3 then
				pc.give_item2(45208)
				item.remove()
			end

			if s == 4 then
				pc.give_item2(45209)
				item.remove()
			end
		end

		when 30335.use begin
			say_title(item_name(30335))

			local s = select(
				item_name(40101),
				item_name(40102),
				item_name(40103),
				item_name(40104),
				item_name(40105),
				item_name(40106),
				item_name(40107)
			)

			if s == 1 then
				pc.give_item2(40101)
				item.remove()
			end

			if s == 2 then
				pc.give_item2(40102)
				item.remove()
			end

			if s == 3 then
				pc.give_item2(40103)
				item.remove()
			end

			if s == 4 then
				pc.give_item2(40104)
				item.remove()
			end

			if s == 5 then
				pc.give_item2(40105)
				item.remove()
			end

			if s == 6 then
				pc.give_item2(40107)
				item.remove()
			end

			if s == 7 then
				pc.give_item2(XXX)
				item.remove()
			end
		end

		when 30338.use begin
			say_title(item_name(30338))

			local s = select(
				item_name(45210),
				item_name(45211),
				item_name(45212),
				item_name(45213)
			)

			if s == 1 then
				pc.give_item2(45210)
				item.remove()
			end

			if s == 2 then
				pc.give_item2(45211)
				item.remove()
			end

			if s == 3 then
				pc.give_item2(45212)
				item.remove()
			end

			if s == 4 then
				pc.give_item2(45213)
				item.remove()
			end
		end

		when 30339.use begin
			say_title(item_name(30339))

			local s = select(
				item_name(40108),
				item_name(40109),
				item_name(40110),
				item_name(40111),
				item_name(40112),
				item_name(40113),
				item_name(40114)
			)

			if s == 1 then
				pc.give_item2(40108)
				item.remove()
			end

			if s == 2 then
				pc.give_item2(40109)
				item.remove()
			end

			if s == 3 then
				pc.give_item2(40110)
				item.remove()
			end

			if s == 4 then
				pc.give_item2(40111)
				item.remove()
			end

			if s == 5 then
				pc.give_item2(40112)
				item.remove()
			end

			if s == 6 then
				pc.give_item2(40113)
				item.remove()
			end

			if s == 7 then
				pc.give_item2(40114)
				item.remove()
			end
		end
	end
end