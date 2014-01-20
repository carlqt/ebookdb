# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Book.destroy_all


# Gets the proper file to load
file_temp_path = File.dirname(__FILE__).to_s
file_name = "bookfile.txt"

file_path = file_temp_path[0, file_temp_path.length - 2]
file_path = file_path + file_name

File.open(file_path, "r").each_line do |line|
  puts line.split(":")
end