def file_input
	File.open('./hello_from_ruby.txt', 'a') do |file|
		puts "Input text"
		user_input = gets.chomp.to_s
		puts "save/read"
		save = gets.chomp.downcase.to_s

		if save == "save"
			file.puts user_input
		end
	return save	
	end
end

def read_file(save)
	File.open('./hello_from_ruby.txt', 'r') do |file_read|
		if save == "read"
			puts file_read.read
		end
	end
end

save = file_input
read_file(save)