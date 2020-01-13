# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv';

csv_text = File.read(Rails.root.join('lib', 'seeds', 'pictureviewer.csv'))
split_text = csv_text.split("\r\n")
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# puts csv
# csv.each do |row|
#     t = Image.new
#     t.url = row['url']
#     t.save
# end
split_text.each do |url|
  Image.create(url: url)
end
puts "There are now #{Image.count} rows in the images table"
