# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all

User.create!([{
  email: "user_first@domain.com",
  bio: "Finance quick win, so ramp up, or those options are already baked in with this model, nor performance review,",
  user_name: "User First",
  password: "glorytokogha!",
  role: "user",
},
{
  email: "user_second@domain.com",
  bio: "Not a hill to die on. 60% to 30% is a lot of persent bake it in everyone thinks the soup tastes better after they've peed in it.",
  user_name: "User Second",
  password: "glorytokogha!",
  role: "user",
},
{
  email: "user_third@domain.com",
  bio: "Let's schedule a standup during the sprint to review our kpis tiger team, yet commitment to the cause",
  user_name: "User Third",
  password: "glorytokogha!",
  role: "user",
},
{
  email: "admin_user@domain.com",
  bio: "I'm the admin",
  user_name: "Admin User",
  password: "glorytokogha!",
  role: "admin"
}])

Post.destroy_all

Post.create!([{
  title: "Punter meeting assassin",
  description: "Great plan! let me diarize this, and we can synchronise ourselves at a later timepoint.",
  keywords: "empower, ballpark, environment",
  user_id: rand(1..3).to_s,
},
{
  title: "Not a hill to die on",
  description: "Radical candor minimize backwards overflow big data, for turd polishing.",
  keywords: "timepoint, procedure, samepage",
  user_id: rand(1..3).to_s,
},
{
  title: "Performance review",
  description: "Can we jump on a zoom code baseline.",
  keywords: "have, more, words",
  user_id: rand(1..3).to_s,
},
{
  title: "Obviously tribal knowledge",
  description: "After I ran into Helen at a restaurant, I realized she was just office pretty it just needs more cowbell.",
  keywords: "cowbell, elephant, wash",
  user_id: rand(1..3).to_s,
},
{
  title: "hop on the bandwagon",
  description: "Enough to wash your face how much bandwidth do you have,",
  keywords: "deliverables, restaurant,  table",
  user_id: rand(1..3).to_s,
},
{
  title: "Finance quick win",
  description: "Can we align on lunch orders ensure to follow requirements when developing solutions",
  keywords: "teams, business, ditching",
  user_id: rand(1..3).to_s,
},
{
  title: "Quick win",
  description: "Both the angel on my left shoulder and the devil on my right",
  keywords: "sample, hangover, fire",
  user_id: rand(1..3).to_s,
},
{
  title: "Guerrilla marketing",
  description: "Cross sabers. Low hanging fruit on-brand but completeley fresh",
  keywords: "candle, hamburger, sign",
  user_id: rand(1..3).to_s,
},
{
  title: "On-brand but completeley fresh",
  description: "Baseline the procedure and samepage your department great plan! let me diarize this",
  keywords: "golf, fjord, hammer",
  user_id: rand(1..3).to_s,
}])

Comment.destroy_all

Comment.create!([{
  text: "It is all exactly as i said, but i don't like it bench mark crisp ppt. Mumbo jumbo back of the net.",
  user_id: rand(1..3).to_s,
  post_id: rand(1..9).to_s,
},
{
  text: "Tread it daily i need to pee and then go to another meeting powerpoint Bunny c-suite.",
  user_id: rand(1..3).to_s,
  post_id: rand(1..9).to_s,
},
{
  text: "It is all exactly as i said, but i don't like it service as core &innovations as power makes our brand.",
  user_id: rand(1..3).to_s,
  post_id: rand(1..9).to_s,
},
{
  text: "This is our north star design you better eat a reality sandwich before you walk back in that boardroom, yet can we align on lunch orders, low-hanging fruit tribal knowledge, but my grasp on reality right now is tenuous.",
  user_id: rand(1..3).to_s,
  post_id: rand(1..9).to_s,
},
{
  text: "Downselect we should leverage existing asserts that ladder up to the message, so hop on the bandwagon, so quick win.",
  user_id: rand(1..3).to_s,
  post_id: rand(1..9).to_s,
},
{
  text: "Golden goose back-end of third quarter it is all exactly as i said, but i don't like it, yet ladder up / ladder back to the strategy we need a recap by eod, cob or whatever comes first.",
  user_id: rand(1..3).to_s,
  post_id: rand(1..9).to_s,
},
{
  text: "Bottleneck mice a better understanding of usage can aid in prioritizing future efforts cross functional teams enable out of the box brainstorming, and we have put the apim bol, temporarily so that we can later put the monitors on time vampire, or we need a recap by eod, cob or whatever comes first.",
  user_id: rand(1..3).to_s,
  post_id: rand(1..9).to_s,
},
{
  text: "Critical mass i don't want to drain the whole swamp, i just want to shoot some alligators, or talk to the slides nail jelly to the hothouse wall we are running out of runway.",
  user_id: rand(1..3).to_s,
  post_id: rand(1..9).to_s,
},
{
  text: "Shoot me an email upstream selling this is meaningless.",
  user_id: rand(1..3).to_s,
  post_id: rand(1..9).to_s,
}])

Like.destroy_all

Like.create!([{
  user_id: rand(1..3),
  post_id: rand(1..9),
},
{
  user_id: rand(1..3),
  post_id: rand(1..9),
},
{
  user_id: rand(1..3),
  post_id: rand(1..9),
},
{
  user_id: rand(1..3),
  post_id: rand(1..9),
}])
