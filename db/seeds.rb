User.destroy_all
Job.destroy_all
Request.destroy_all

user1 = User.create!(email: "tom.duckworth91@gmail.com", password: "password", password_confirmation: "password", first_name: "Tom", last_name: "Duckworth", mobile: "07960191449", address: "7 Henderson Road", postcode: "SW18 3RR", image: "http://i.imgur.com/MQ9pwIV.jpg", dob: "1991-01-13", bio: "Four strings of spaghetti and the moon.", rating: 2)

user2 = User.create!(email: "ric.daniels@gmail.com", password: "password", password_confirmation: "password", first_name: "Rich", last_name: "Daniels", mobile: "07960191459", address: "9 Wallaby Way", postcode: "W1 6QU", image: "http://i.imgur.com/I0iLFKx.jpg", dob: "1981-07-20", bio:"Petting rabbits like a champ.", rating: 4)

user3 = User.create!(email: "luca@gmail.com", password: "password", password_confirmation: "password", first_name: "Luca", last_name: "Scanu", mobile: "07960143459", address: "9 Sydney Street", postcode: "NW2 4AL", image: "http://i.imgur.com/az0Wwnm.jpg", dob: "1994-06-25", bio: "Pretending to be other people since 1994...", rating: 2)

user4 = User.create!(email: "sharon@gmail.com", password: "password", password_confirmation: "password", first_name: "Sharon", last_name: "Phillips", mobile: "07960143459", address: "10 Sydney Street", postcode: "NW3 4AL", image: "http://i.imgur.com/0QMMh2f.jpg", dob: "1970-07-08", bio: "Happy. Free. Confused. Lonely. At the same time.", rating: 4)

user5 = User.create!(email: "hot_male@hotmail.com", password: "password", password_confirmation: "password", first_name: "Musty", last_name: "Musty", mobile: "07960143459", address: "13 Sydney Street", postcode: "NW1 4AL", image: "http://i.imgur.com/IgjSJRM.jpg", dob: "1981-05-13", bio: "My views are not my own and are associated with really massive corporations", rating: 2)

user6 = User.create!(email: "richy@gmail.com", password: "password", password_confirmation: "password", first_name: "Richard", last_name: "Baller", mobile: "07960143459", address: "18 Sydney Street", postcode: "NW7 4AL", image: "http://i.imgur.com/uMkiILr.jpg", dob: "1988-01-18", bio: "Prince of Eternia and Defender of the Secrets of Castle Grayskull. Dislikes blue cheese.", rating: 3)

user7 = User.create!(email: "hudhayfa@gmail.com", password: "password", password_confirmation: "password", first_name: "Hudhayfa", last_name: "Man", mobile: "07960143459", address: "9 Sydney Street", postcode: "NW2 4AL", image: "http://i.imgur.com/N01PAoj.jpg", dob: "1988-01-18", bio: "The man himself", rating: 4)

job1 = Job.create!(title: "Horse Whisperer", description: "Cleaning of stable. Horse riding. Assistance in the trail etc... Why do not you spend the day with a horse? Once you can come and visit us next time you can also get on the horse. If you think you can come to a one time experience, then you are looking for people who can come over twice a month. 'I want to study Western!', 'I tried touching a horse.' Etc. I think that there are various reasons, please do not hesitate to contact us.", location: "8 Guilford Cresent", postcode: "E5 6HY", datetime: "2017-06-30 10:00:00 Z", owner_id: user1.id, rate: 10, image: "http://i.imgur.com/fbmt5FW.jpg")

job2 = Job.create!(title: "Editing", description: "Easy editing with Audacity using Mac
Please tell me about registration to Podcast's iTunes.
I would be most appreciate if you could meet and exchange somewhere if possible.
Public relations activities and blog installation are unnecessary.
Thank you!", location: "8 Guilford Cresent", postcode: "E5 6HY", datetime: "2017-07-03 11:00:00 Z", owner_id: user2.id, rate: 20, image: "http://i.imgur.com/0JUvOOB.jpg")

job3 = Job.create!(title: "Cleaner", description: "
We are looking for people who will do the general cleaning of the property that we are using at night. I am planning to ask about 8 jobs per month. Reward: 2000 yen for cleaning, for those who do wash and dry the sheets
I will pay + 500 yen.", location: "8 Guilford Cresent", postcode: "E5 6HY", datetime: "2017-08-28 01:00:00 Z", owner_id: user3.id, rate: 50, image: "http://i.imgur.com/9HO4sY9.jpg")

job4 = Job.create!(title: "Dressmaking", description: "It is a beginner for dressmaking. We are looking for someone who regularly tells us about the sewing on weekends (Saturdays and Sundays etc.) instead of weekdays.", location: "8 Guilford Cresent", postcode: "E5 6HY", datetime: "2017-09-05 09:30:00 Z", owner_id: user3.id, rate: 25, image: "http://i.imgur.com/P7rtW8i.jpg")

job5 = Job.create!(title: "Dog Whisperer", description: "Golden Dooodle Walk for seven months please. Power is strong. The personality is temperate and gentle. Limited to those who love big dogs. If you can respond when you can not take a walk by all means, it will be saved. Please come and pick me up at your preferred time regardless of 24 hours. Please walk for nearly an hour talking with the dog. It will be appreciated if anyone can consider it.", location: "8 Guilford Cresent", postcode: "E5 6HY", datetime: "2017-10-02 17:30:00 Z", owner_id: user2.id, rate: 10, image: "http://i.imgur.com/tFuH76G.jpg")

job6 = Job.create!(title: "Cleaning", description: "Please clean the 1K apartment! It will be appreciated if you can do a little detail, centering on regular cleaning! The schedule will be overdue depending on the contents in about 2 hours! Thanking you in advance!", location: "8 Guilford Cresent", postcode: "E5 6HY", datetime: "2017-09-04 11:00:00 Z", owner_id: user4.id, rate: 8, image: "http://i.imgur.com/GlKG3nx.jpg")

job7 = Job.create!(title: "Story teller", description: "It is a story of a story with friends such as stories that have experienced ultra fun using the sharing service (anytimes, Airbnb, Mercari, a service that allows individuals and individuals to share things, spaces, skills) and gained stories Please let me tell you the story! Once the schedule is met, we will accept all proposals from those who applied. You do not have to be good at talking. Schelling service best as we will ask questions to make it easy to talk. Please tell us the experience you thought. You can do it online, such as Skype, or a cafe in Tokyo. In the case of a cafe, I will treat you on the spot.", location: "8 Guilford Cresent", postcode: "E5 6HY", datetime: "2017-08-11 11:30:00 Z", owner_id: user5.id, rate: 17, image: "http://i.imgur.com/PKJL5ri.jpg")

job8 = Job.create!(title: "Saleman", description: "Half day of Saturday, May 20 (about 5 hours) Who will help me with sale! I would like you to do it from morning till about 13 o'clock on that day. I will explain it if you can come and see it on the previous day. Those who can do fun and bright with simple sales work. Other negotiations", location: "8 Guilford Cresent", postcode: "E5 6HY", datetime: "2017-12-01 09:30:00 Z", owner_id: user6.id, rate: 16, image: "http://i.imgur.com/K0ftcKb.jpg")

job9 = Job.create!(title: "Fix jabberja", description: "Although I can open a house for two months, I am worried whether I closed the taps of the water supply properly. I hurriedly left the house. Twist the tap of the tap,
With water jabberja out I'm going to close the water tap and the water tap. Since I have not confirmed returning to the room, I am worried whether the water has stopped properly. We are looking for someone who will check if we closed the tap of the tap.", location: "8 Guilford Cresent", postcode: "E5 6HY", datetime: "2017-05-02 08:00:00 Z", owner_id: user6.id, rate: 20, image: "http://i.imgur.com/xlak3bf.jpg")

job10 = Job.create!(title: "Maid", description: "I will go to Eniwa-shi, Hokkaido in April 2017. I will hire a maid from April. You can contact with mail. If anyone is interested in this job.", location: "8 Guilford Cresent", postcode: "E5 6HY", datetime: "2017-06-02 10:15:00 Z", owner_id: user7.id, rate: 25, image: "http://i.imgur.com/cYcFGyv.jpg")

job11 = Job.create!(title: "Translator", description: "I am waiting for an English presentation / speech. For the time being I made the manuscript, but there is more expressive expression. Is it okay to keep my own pronunciation of katakana English? Those who are worrying. Correct to native speaking pronunciation in one hour.", location: "8 Guilford Cresent", postcode: "E5 6HY", datetime: "2017-07-10 13:00:00 Z", owner_id: user7.id, rate: 21, image: "http://i.imgur.com/PKJL5ri.jpg")

job12 = Job.create!(title: "Fix my pi", description: "I do not ask the model, but ideally it is possible to have as many varieties as possible!", location: "8 Guilford Cresent", postcode: "E5 6HY", datetime: "2017-07-04 11:00:00 Z", owner_id: user3.id, rate: 20, image: "http://i.imgur.com/SLJNMqq.jpg")

# request1 = Request.create!(message: "I'm up for it", user_id: user1.id, job_id: 12, status: 1)
# request1 = Request.create!(message: "I'm keen", user_id: user2.id, job_id: 12, status: 1)
# request1 = Request.create!(message: "Sign me up!", user_id: user3.id, job_id: 12, status: 1)
# request1 = Request.create!(message: "let's do this", user_id: user4.id, job_id: 12, status: 1)
# request1 = Request.create!(message: "I have the skills you require", user_id: user5.id, job_id: 12, status: 1)
# request1 = Request.create!(message: "I have the experience", user_id: user6.id, job_id: 12, status: 1)
# request1 = Request.create!(message: "I'm up for it", user_id: user1.id, job_id: 11, status: 1)
# request1 = Request.create!(message: "I'm keen", user_id: user2.id, job_id: 11, status: 1)
# request1 = Request.create!(message: "Sign me up!", user_id: user3.id, job_id: 11, status: 1)
# request1 = Request.create!(message: "let's do this", user_id: user4.id, job_id: 11, status: 1)
# request1 = Request.create!(message: "I have the skills you require", user_id: user5.id, job_id: 11, status: 1)
# request1 = Request.create!(message: "I have the experience", user_id: user6.id, job_id: 11, status: 1)
# request1 = Request.create!(message: "I'm up for it", user_id: user1.id, job_id: 10, status: 1)
# request1 = Request.create!(message: "I'm keen", user_id: user2.id, job_id: 10, status: 1)
# request1 = Request.create!(message: "Sign me up!", user_id: user3.id, job_id: 10, status: 1)
# request1 = Request.create!(message: "let's do this", user_id: user4.id, job_id: 10, status: 1)
# request1 = Request.create!(message: "I have the skills you require", user_id: user5.id, job_id: 10, status: 1)
# request1 = Request.create!(message: "I have the experience", user_id: user6.id, job_id: 10, status: 1)
# request1 = Request.create!(message: "I'm up for it", user_id: user7.id, job_id: 1, status: 1)
# request1 = Request.create!(message: "I'm keen", user_id: user2.id, job_id: 1, status: 1)
# request1 = Request.create!(message: "Sign me up!", user_id: user3.id, job_id: 1, status: 1)
# request1 = Request.create!(message: "let's do this", user_id: user4.id, job_id: 1, status: 1)
# request1 = Request.create!(message: "I have the skills you require", user_id: user5.id, job_id: 1, status: 1)
# request1 = Request.create!(message: "I have the experience", user_id: user6.id, job_id: 1, status: 1)
# request1 = Request.create!(message: "I'm up for it", user_id: user7.id, job_id: 5, status: 1)
# request1 = Request.create!(message: "I'm keen", user_id: user2.id, job_id: 5, status: 1)
# request1 = Request.create!(message: "Sign me up!", user_id: user3.id, job_id: 5, status: 1)
# request1 = Request.create!(message: "let's do this", user_id: user4.id, job_id: 5, status: 1)
# request1 = Request.create!(message: "I have the skills you require", user_id: user5.id, job_id: 5, status: 1)
# request1 = Request.create!(message: "I have the experience", user_id: user6.id, job_id: 5, status: 1)

# request1 = job1.requests.create!(message: "I'm up for it", user_id: user2.id, status: 1)
# request2 = job1.requests.create!(message: "I am well up for this", user_id: user3.id, status: 1)
