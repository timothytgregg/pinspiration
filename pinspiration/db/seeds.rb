# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pin.destroy_all
pin_data = #{"FirstPin"=>[{:title=>"FirstPinTitle", :img_url=>"http://nyulocal.com/wp-content/uploads/2013/10/The-plane-flying-at-sunset-airliner-photography_1920x1080.jpg"},
  #{:title=>"Heads Will Roll", :album=>"It's Blitz! (Deluxe Edition)", :preview_link=>"http://a308.phobos.apple.com/us/r10
  [{:title=>"FirstPinTitle",
    :img_url=>"http://nyulocal.com/wp-content/uploads/2013/10/The-plane-flying-at-sunset-airliner-photography_1920x1080.jpg"},
    {:title=>"SecondPintTitle",
    :img_url=>"http://pad1.whstatic.com/images/thumb/f/f0/Draw-a-Shark-Step-8-Version-3.jpg/670px-Draw-a-Shark-Step-8-Version-3.jpg"}]

pin_data.each do |pin|
  Pin.create!({
    title:        pin[:title],
    img_url:      pin[:img_url],
  })
end
