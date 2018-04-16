# frozen_string_literal: true

require 'csv'

csv_text = File.read(Rails.root.join('data', 'beauxties-list.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Bow.new
  t.name = row['name']
  t.style = row['style']
  t.color = row['color']
  t.fabric = row['fabric']
  t.description = row['description']
  t.price = row['price']
  t.stock_quantity = row['stock_quantity']
  t.image = row['image']
  t.save
end
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
