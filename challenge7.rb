def file_input
	File.open('./hello_from_ruby.txt', 'a') do |file|
		puts "Input text"
		user_input = gets.chomp.to_s
		puts "Type 'save' to save"
		save = gets.chomp.downcase.to_s

		if save == "save"
			file.puts user_input
		end
	return save	
	end
end

save = file_input
