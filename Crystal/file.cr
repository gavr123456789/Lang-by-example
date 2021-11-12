file = File.new("file.cr")
content = file.gets_to_end
file.close

!p content.split("\n")