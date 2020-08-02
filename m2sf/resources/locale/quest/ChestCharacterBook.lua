quest ChestCharacterBook begin
	state start begin

	----------------------------------------------

		when 71178.use begin -- WOLFMAN
			local SG1 = {{50530, 1}, {50531, 1}, {50532, 1}, {50533, 1}, {50534, 1}, {50535, 1}}
			local SG2 = {{50530, 1}, {50531, 1}, {50532, 1}, {50533, 1}, {50534, 1}, {50535, 1}}

			for i = 1, 10 do

				local BookVNum = get_random_vnum_from_table(SG1)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

		when 71179.use begin -- WOLFMAN
			local SG1 = {{50530, 1}, {50531, 1}, {50532, 1}, {50533, 1}, {50534, 1}, {50535, 1}}
			local SG2 = {{50530, 1}, {50531, 1}, {50532, 1}, {50533, 1}, {50534, 1}, {50535, 1}}

			for i = 1, 25 do

				local BookVNum = get_random_vnum_from_table(SG1)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

	----------------------------------------------

		when 71217.use begin -- CHAMANE
			local SG1 = {{50491, 1}, {50492, 1}, {50493, 1}, {50494, 1}, {50495, 1}, {50496, 1}}
			local SG2 = {{50506, 1}, {50507, 1}, {50508, 1}, {50509, 1}, {50510, 1}, {50511, 1}}

			for i = 1, 10 do

				local BookVNum = get_random_vnum_from_table(SG2)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

		when 71218.use begin  -- CHAMANE
			local SG1 = {{50491, 1}, {50492, 1}, {50493, 1}, {50494, 1}, {50495, 1}, {50496, 1}}
			local SG2 = {{50506, 1}, {50507, 1}, {50508, 1}, {50509, 1}, {50510, 1}, {50511, 1}}

			for i = 1, 25 do

				local BookVNum = get_random_vnum_from_table(SG2)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

	----------------------------------------------

		when 71215.use begin  -- CHAMANE
			local SG1 = {{50491, 1}, {50492, 1}, {50493, 1}, {50494, 1}, {50495, 1}, {50496, 1}}
			local SG2 = {{50506, 1}, {50507, 1}, {50508, 1}, {50509, 1}, {50510, 1}, {50511, 1}}

			for i = 1, 10 do

				local BookVNum = get_random_vnum_from_table(SG1)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

		when 71216.use begin  -- CHAMANE
			local SG1 = {{50491, 1}, {50492, 1}, {50493, 1}, {50494, 1}, {50495, 1}, {50496, 1}}
			local SG2 = {{50506, 1}, {50507, 1}, {50508, 1}, {50509, 1}, {50510, 1}, {50511, 1}}

			for i = 1, 25 do

				local BookVNum = get_random_vnum_from_table(SG1)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

	----------------------------------------------

		when 71213.use begin  -- SURA
			local SG1 = {{50461, 1}, {50462, 1}, {50463, 1}, {50464, 1}, {50465, 1}, {50466, 1}}
			local SG2 = {{50476, 1}, {50477, 1}, {50478, 1}, {50479, 1}, {50480, 1}, {50481, 1}}

			for i = 1, 10 do

				local BookVNum = get_random_vnum_from_table(SG2)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

		when 71214.use begin  -- SURA
			local SG1 = {{50461, 1}, {50462, 1}, {50463, 1}, {50464, 1}, {50465, 1}, {50466, 1}}
			local SG2 = {{50476, 1}, {50477, 1}, {50478, 1}, {50479, 1}, {50480, 1}, {50481, 1}}

			for i = 1, 25 do

				local BookVNum = get_random_vnum_from_table(SG2)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

	----------------------------------------------

		when 71211.use begin  -- SURA
			local SG1 = {{50461, 1}, {50462, 1}, {50463, 1}, {50464, 1}, {50465, 1}, {50466, 1}}
			local SG2 = {{50476, 1}, {50477, 1}, {50478, 1}, {50479, 1}, {50480, 1}, {50481, 1}}

			for i = 1, 10 do

				local BookVNum = get_random_vnum_from_table(SG1)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

		when 71212.use begin  -- SURA
			local SG1 = {{50461, 1}, {50462, 1}, {50463, 1}, {50464, 1}, {50465, 1}, {50466, 1}}
			local SG2 = {{50476, 1}, {50477, 1}, {50478, 1}, {50479, 1}, {50480, 1}, {50481, 1}}

			for i = 1, 25 do

				local BookVNum = get_random_vnum_from_table(SG1)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

	----------------------------------------------

		when 71209.use begin  -- ASSASSIN
			local SG1 = {{50431, 1}, {50432, 1}, {50433, 1}, {50434, 1}, {50435, 1}, {50436, 1}}
			local SG2 = {{50446, 1}, {50447, 1}, {50448, 1}, {50449, 1}, {50450, 1}, {50451, 1}}

			for i = 1, 10 do

				local BookVNum = get_random_vnum_from_table(SG2)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

		when 71210.use begin  -- ASSASSIN
			local SG1 = {{50431, 1}, {50432, 1}, {50433, 1}, {50434, 1}, {50435, 1}, {50436, 1}}
			local SG2 = {{50446, 1}, {50447, 1}, {50448, 1}, {50449, 1}, {50450, 1}, {50451, 1}}

			for i = 1, 25 do

				local BookVNum = get_random_vnum_from_table(SG2)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

	----------------------------------------------

		when 71207.use begin  -- ASSASSIN
			local SG1 = {{50431, 1}, {50432, 1}, {50433, 1}, {50434, 1}, {50435, 1}, {50436, 1}}
			local SG2 = {{50446, 1}, {50447, 1}, {50448, 1}, {50449, 1}, {50450, 1}, {50451, 1}}

			for i = 1, 10 do

				local BookVNum = get_random_vnum_from_table(SG1)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

		when 71208.use begin  -- ASSASSIN
			local SG1 = {{50431, 1}, {50432, 1}, {50433, 1}, {50434, 1}, {50435, 1}, {50436, 1}}
			local SG2 = {{50446, 1}, {50447, 1}, {50448, 1}, {50449, 1}, {50450, 1}, {50451, 1}}

			for i = 1, 25 do

				local BookVNum = get_random_vnum_from_table(SG1)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

	----------------------------------------------

		when 71205.use begin  -- WARRIOR
			local SG1 = {{50401, 1}, {50402, 1}, {50403, 1}, {50404, 1}, {50405, 1}, {50406, 1}}
			local SG2 = {{50416, 1}, {50417, 1}, {50418, 1}, {50419, 1}, {50420, 1}, {50421, 1}}

			for i = 1, 10 do

				local BookVNum = get_random_vnum_from_table(SG2)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

		when 71206.use begin  -- WARRIOR
			local SG1 = {{50401, 1}, {50402, 1}, {50403, 1}, {50404, 1}, {50405, 1}, {50406, 1}}
			local SG2 = {{50416, 1}, {50417, 1}, {50418, 1}, {50419, 1}, {50420, 1}, {50421, 1}}

			for i = 1, 25 do

				local BookVNum = get_random_vnum_from_table(SG2)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

	----------------------------------------------

		when 71203.use begin  -- WARRIOR
			local SG1 = {{50401, 1}, {50402, 1}, {50403, 1}, {50404, 1}, {50405, 1}, {50406, 1}}
			local SG2 = {{50416, 1}, {50417, 1}, {50418, 1}, {50419, 1}, {50420, 1}, {50421, 1}}

			for i = 1, 10 do

				local BookVNum = get_random_vnum_from_table(SG1)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

		when 71204.use begin  -- WARRIOR
			local SG1 = {{50401, 1}, {50402, 1}, {50403, 1}, {50404, 1}, {50405, 1}, {50406, 1}}
			local SG2 = {{50416, 1}, {50417, 1}, {50418, 1}, {50419, 1}, {50420, 1}, {50421, 1}}

			for i = 1, 25 do

				local BookVNum = get_random_vnum_from_table(SG1)
				pc.give_item2(BookVNum, 1)
			end

			item.remove()
		end

	----------------------------------------------

	end
end