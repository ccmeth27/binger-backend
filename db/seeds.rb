# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'ccm27', password: '2727')
amazon = Service.create(service_name: 'amazon', logo_path: '../assets/images/amazon.png', row_id: 1)
disney = Service.create(service_name: 'disney', logo_path: '../assets/images/disney.png', row_id: 1)
fx = Service.create(service_name: 'fx', logo_path: '../assets/images/fx.png', row_id: 1)
hbo = Service.create(service_name: 'hbo', logo_path: '../assets/images/hbo.png', row_id: 2)
hulu = Service.create(service_name: 'hulu', logo_path: '../assets/images/hulu.png', row_id: 2)
netflix = Service.create(service_name: 'netflix', logo_path: '../assets/images/netflix.png', row_id: 2)
showtime = Service.create(service_name: 'showtime', logo_path: '../assets/images/showtime.png', row_id: 3)
stars = Service.create(service_name: 'stars', logo_path: '../assets/images/stars.png', row_id: 3)
tbs = Service.create(service_name: 'tbs', logo_path: '../assets/images/tbs.png', row_id: 3)
tnt = Service.create(service_name: 'tnt', logo_path: '../assets/images/tnt.png', row_id: 4)
usa = Service.create(service_name: 'usa', logo_path: '../assets/images/usa.png', row_id: 4)
sub = Subscription.create(user_id: 1, amazon: true, disney: true, fx: false, hbo: false, hulu: true, netflix: true, showtime: false, starz: false, tbs: false, tnt: false, usa: false,)