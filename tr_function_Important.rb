class Atbash
	def self.encode(input)
		return input.downcase.tr("abcdefghijklmnopqrstuvwxyz", "zyxwvutsrqponmlkjihgfedcba").gsub(/(.{5})/, '\1 ')
	end
end

solution = Atbash.encode('thequickbrownfoxjumpsoverthelazydog')
print solution
