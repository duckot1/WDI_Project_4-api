User.destroy_all
Job.destroy_all
Request.destroy_all

user1 = User.create!(email: "tom.duckworth91@gmail.com", password: "password", password_confirmation: "password", first_name: "Tom", last_name: "Duckworth", mobile: "07960191449", address: "7 Henderson Road", postcode: "SW18 3RR", image: "http://fillmurray.com/209/304", dob: "1991-01-13")

job1 = Job.create!(title: "Cleaner", description: "Clean me please.", location: "8 Guilford Cresent", postcode: "E5 6HY", time: "2000-01-01 08:00:00", date: "2017-05-14", owner_id: user1.id)

user2 = User.create!(email: "phil.daniels@gmail.com", password: "password", password_confirmation: "password", first_name: "Phil", last_name: "Daniels", mobile: "07960191459", address: "9 Wallaby Way", postcode: "W1 6QU", image: "http://fillmurray.com/300/304", dob: "1981-07-20")

user3 = User.create!(email: "josh@gmail.com", password: "password", password_confirmation: "password", first_name: "Josh", last_name: "Gregson", mobile: "07960143459", address: "9 Sydney Street", postcode: "NW2 4AL", image: "http://fillmurray.com/310/320", dob: "1983-04-21")

request1 = job1.requests.create!(message: "I'm up for it", user_id: user2.id, status: 1)
# request2 = job1.requests.create!(message: "I am well up for this", user_id: user3.id, status: 1)
