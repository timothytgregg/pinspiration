# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require_relative './pin_data.rb'
require_relative './board_data.rb'

Pin.destroy_all
Board.destroy_all

board_data = get_board_data()
pin_data = get_pin_data()

pin_data.each_pair do |board_key, pins|
  info = board_data[board_key]
  current_board = Board.create!({
    name:             info[:name],
    description:      info[:description],
  })

  pins.each do |pin|
    Pin.create!({
      title:        pin[:title],
      img_url:      pin[:img_url],
      # board:        current_board,
    })
  end
end
