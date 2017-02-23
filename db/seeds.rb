User.destroy_all
Job.destroy_all
Request.destroy_all

user1 = User.create!(email: "tom.duckworth91@gmail.com", password: "password", password_confirmation: "password", first_name: "Tom", last_name: "Duckworth", mobile: "07960191449", address: "7 Henderson Road", postcode: "SW18 3RR", image: "http://i.imgur.com/MQ9pwIV.jpg", dob: "1991-01-13", bio: "Four strings of spaghetti and the moon.")

user2 = User.create!(email: "ric.daniels@gmail.com", password: "password", password_confirmation: "password", first_name: "Rich", last_name: "Daniels", mobile: "07960191459", address: "9 Wallaby Way", postcode: "W1 6QU", image: "http://i.imgur.com/I0iLFKx.jpg", dob: "1981-07-20", bio:"Petting rabbits like a champ.")

user3 = User.create!(email: "luca@gmail.com", password: "password", password_confirmation: "password", first_name: "Luca", last_name: "Gregson", mobile: "07960143459", address: "9 Sydney Street", postcode: "NW2 4AL", image: "http://i.imgur.com/az0Wwnm.jpg", dob: "1955-06-25", bio: "Pretending to be other people since 1994...")

user4 = User.create!(email: "sharon@gmail.com", password: "password", password_confirmation: "password", first_name: "Josh", last_name: "Gregson", mobile: "07960143459", address: "9 Sydney Street", postcode: "NW2 4AL", image: "http://i.imgur.com/0QMMh2f.jpg", dob: "1970-07-08", bio: "Mutton dressed as mutton")

user5 = User.create!(email: "hot_male@hotmail.com", password: "password", password_confirmation: "password", first_name: "Musty", last_name: "Gregson", mobile: "07960143459", address: "9 Sydney Street", postcode: "NW2 4AL", image: "http://i.imgur.com/IgjSJRM.jpg", dob: "1981-05-13", bio: "My views are not my own and are associated with really massive corporations")

user6 = User.create!(email: "richy@gmail.com", password: "password", password_confirmation: "password", first_name: "Josh", last_name: "Gregson", mobile: "07960143459", address: "9 Sydney Street", postcode: "NW2 4AL", image: "http://i.imgur.com/uMkiILr.jpg", dob: "1988-01-18", bio: "Prince of Eternia and Defender of the Secrets of Castle Grayskull. Dislikes blue cheese.")

user7 = User.create!(email: "hudhayfa@gmail.com", password: "password", password_confirmation: "password", first_name: "Josh", last_name: "Gregson", mobile: "07960143459", address: "9 Sydney Street", postcode: "NW2 4AL", image: "http://i.imgur.com/N01PAoj.jpg", dob: "1988-01-18", bio: "The man himself")

job1 = Job.create!(title: "Cleaner", description: "Clean me please.", location: "8 Guilford Cresent", postcode: "E5 6HY", time: "2000-01-01 08:00:00", date: "2017-05-14", owner_id: user1.id)

request1 = job1.requests.create!(message: "I'm up for it", user_id: user2.id, status: 1)
# request2 = job1.requests.create!(message: "I am well up for this", user_id: user3.id, status: 1)
