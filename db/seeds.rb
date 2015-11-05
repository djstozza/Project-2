# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.destroy_all
User.destroy_all

u1 = User.create(email: "dan@dan.com", name: "dan", surname: "sztolcman", password: "12345678", address: "14 Cecil Rd, Rose Bay, Sydney, AU", address1: "14 Cecil Rd", suburb: "Rose Bay", city: "Sydney", state: "NSW", country: "AU", latitude: "-33.8752", longitude: "151.2556" )
u2 = User.create(email: "v@v.com", name: "v", surname: "smthing", password: "12345678")
u3 = User.create(email: "miles@miles.com", name: "miles", surname: "disch", password: "12345678", )

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

subcat4 = ["antiques", "appliances", "arts+crafts", "atv/utv/sno", "auto parts", "baby+kid", "barter", "beauty+hlth", "bikes", "boats", "books & magazines", "business", "cars+trucks", "cds/dvd/vhs", "clothes+acc", "collectibles", "computers", "electronics", "farm+garden", "furniture", "garage sale", "general", "heavy equip", "household", "jewelry", "materials", "mobile phones", "motorcycles", "music instr", "photo+video", "rvs+camp", "sporting", "tickets", "tools", "toys+games"]

subcat4.each do |subcat|
    c4.subcategories.create :name => subcat
end



subcats5 = ["apts / housing", "housing swap", "office / commercial", "parking / storage", "real estate for sale", "rooms / shared", "sublets / temporary", "vacation rentals"]

subcats5.each do |subcat|
    c5.subcategories.create :name => subcat
end


doc_act = Nokogiri::HTML(open("http://sydney.craigslist.com.au/search/act"))
activities = doc_act.css(".row .txt .pl a").children	

s1 = Subcategory.find_by(name: 'activities')

activities.each do |activity|
	s1.items.create :name => activity.text, :image => 'http://www.fillmurray.com/200/200'
end

doc_m4m = Nokogiri::HTML(open("http://sydney.craigslist.com.au/search/m4m?"))
m4m = doc_m4m.css(".row .txt .pl a").children

s2 = Subcategory.find_by(name: 'rants and raves')

m4m.each do |m4m|
	s2.items.create :name => m4m.text 
end 


doc_apa = Nokogiri::HTML(open("http://sfbay.craigslist.com.au/search/apa"))
apa = doc_apa.css(".row .txt .pl a").children

s3 = Subcategory.find_by(name: 'apts / housing')

apa.each do |apa|
	s3.items.create :name => apa
end

require 'open-uri'

BASE_CRAIGS_URL = "http://sydney.craigslist.com.au" 
CNT = "#{BASE_CRAIGS_URL}/search/cta"
doc_cta = Nokogiri::HTML(open(CNT))
rows = doc_cta.css('div.content .row')

@hrefs = []
h_url = []
text = []
docs = []
names = []
price = []
img = []
location = []

rows.each do |row|
  @hrefs << row.css(".txt .pl a").attr('href').value() if row.css(".txt .pl a").attr('href').value() =~ /^(\/cto\/|\/ctd\/)/
end

@hrefs.each do |h|
  h_url << BASE_CRAIGS_URL + h
end 

h_url.each do |url|
  docs << Nokogiri::HTML(open(url))
end

docs.each do |doc|

  if doc.css(".postingtitletext span.price").text().empty?
    price << 0
  else
    price << /(\d+)/.match(doc.css(".postingtitletext span.price").text()) 
  end

  if doc.css("#pagecontainer .userbody .tray img").empty?
    img << "http://www.fillmurray.com/200/200"
  else 
    img << doc.css("#pagecontainer .userbody .tray img").attr('src').value()
  end 

  if doc.css(".postingtitletext small").empty?
    location << 'sydney'
  else 
    location << /\((.*)\)$/.match(doc.css(".postingtitletext small").text())
  end 

  names << doc.css(".postingtitletext").text()
  text << doc.css("#pagecontainer .userbody #postingbody").text() 
end
s4 = Subcategory.find_by(name: 'cars+trucks')

docs.each_with_index do |el, i|
  item = Item.new
  item.description = text[i] if text[i]
  item.name = names[i] if names[i]
  item.image = "http://www.fillmurray.com/200/200" 
  price = price[i][0].to_i if price[i]
  price = price || 0

  item.address = location[i][1]
  item.image = img[i]

  item.price = price
  item.save
  s4.items << item
  u1.items << item
end


