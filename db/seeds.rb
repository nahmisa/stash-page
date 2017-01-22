# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
milks = [
  { location: 'home',
    amount: 5,
    milk_type: 'fresh',
    exp_date: Time.now,
    date: Time.now
  },
  { location: 'home',
    amount: 10,
    milk_type: 'thawed',
    exp_date: Time.now,
    date: Time.now
  },
  { location: 'home',
    amount: 15,
    milk_type: 'frozen',
    exp_date: Time.now,
    date: Time.now
  },
  { location: 'home',
    amount: 20,
    milk_type: 'consumed',
    exp_date: Time.now,
    date: Time.now
  }
]

milks.each do |param|
  Milk.create(param)
end
