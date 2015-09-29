# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

u1 = User.create(email: "dan@dan.com", name: "dan", surname: "sztolcman", password: "12345678")
u2 = User.create(email: "v@v.com", name: "v", surname: "smthing", password: "12345678")
u3 = User.create(email: "miles@miles.com", name: "miles", surname: "disch", password: "12345678")

Category.destroy_all

Category.destroy_all
c0 = Category.create :name => 'community'
c1 = Category.create :name => 'gigs'
c2 = Category.create :name => 'jobs'
c3 = Category.create :name => 'personals'
c4 = Category.create :name => 'for sale'
c5 = Category.create :name => 'housing'

Subcategory.destroy_all

subcats0 = ["activities", "artists", "childcare", "classes", "events", "general", "groups", "localnews", "lost+found", "musicians", "pets", "politics", "rideshare", "volunteers"] 

subcats0.each do |subcat|
    c0.subcategories.create :name => subcat
end

subcat1 = ["computer", "creative", "crew", "domestic", "event", "labor", "talent", "writing"]
subcat1.each do |subcat|
    c1.subcategories.create :name => subcat
end

subcats2 = ["accounting+finance", "admin / office", "arch / engineering", "art / media / design", "biotech / science", "business / mgmt", "customer service", "education", "food / bev / hosp", "general labor", "government", "human resources", "internet engineers", "legal  /  paralegal", "manufacturing", "marketing / pr / ad", "medical / health", "nonprofit sector", "real estate", "retail / wholesale", "sales / biz dev", "salon / spa / fitness", "security", "skilled trade / craft", "systems / network", "technical support", "transport", "tv / film / video", "web / info design", "writing / editing"]

subcats2.each do |subcat|
    c2.subcategories.create :name => subcat
end

subcats3 = ["strictly platonic", "women seek women", "women seeking men", "men seeking women", "men seeking men", "misc romance", "casual encounters", "missed connections", "rants and raves"]

subcats3.each do |subcat|
    c3.subcategories.create :name => subcat
end

subcat4 = ["antiques", "appliances", "arts+crafts", "atv/utv/sno", "auto parts", "baby+kid", "barter", "beauty+hlth", "bikes", "boats", "books", "business", "cars+trucks", "cds/dvd/vhs", "cell phones", "clothes+acc", "collectibles", "computers", "electronics", "farm+garden", "furniture", "garage sale", "general", "heavy equip", "household", "jewelry", "materials", "motorcycles", "music instr", "photo+video", "rvs+camp", "sporting", "tickets", "tools", "toys+games", "video"]

subcat4.each do |subcat|
    c4.subcategories.create :name => subcat
end



subcats5 = ["apts / housing", "housing swap", "office / commercial", "parking / storage", "real estate for sale", "rooms / shared", "sublets / temporary", "vacation rentals"]

subcats5.each do |subcat|
    c5.subcategories.create :name => subcat
end

require 'open-uri'

doc_act = Nokogiri::HTML(open("http://sydney.craigslist.com.au/search/act"))
activities = doc_act.css(".row .txt .pl a").children	
s1 = Subcategory.find_by(name: 'activities')
activities.each do |activity|
	s1.items.create :name => activity.text
end

binding.pry
