# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def addEvents!
	100.times do |t|
		@event = Event.new

    # まとめたい。。。
		@event.owner_id = t
		@event.name = t
		@event.place = t
		@event.start_time = Time.now
		@event.end_time = Time.now + 86400
		@event.content = t

		@event.save!
	end
end


def main
  addEvents!()
end

main()

