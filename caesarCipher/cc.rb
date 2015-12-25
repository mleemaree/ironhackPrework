def solve_cipher(m, o = -3)
	m.split('').each do |c|
		a = c.ord
		if a == 32
			decode = 32
		elsif a >= 99
			decode = a + o	
		else
			decode = a + o + 26
		end

		solved = decode.chr

		puts solved

		#puts decode
	end
end

# solve_cipher("ifmmp", -1)

solve_cipher("pb uhdo qdph lv grqdog gxfn")
