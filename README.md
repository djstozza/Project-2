== README

##VDM

This project was executed as a challenge to outdo ourselves and try achieve a result that closely mimiced a fullscale product. A wide amalgamation of GEMs and features were applied to enhance the overall flexibility of this project.

##MOTIVATION
"All the fun happens at the edges, theres nothing but organized procedure in the center." - Khosla
We tried creating a project that would push us beyond our expectations, this coupled with the frustrations of an ugly craigslist, we embarked on beautifying the entire concept. VDM was created to add the extra functionality that would make the site extremely user friendly.

##FEATURES

###NOKOGIRI
For the search we used nokogiri to scrape craigslist and fill in seed data from a broad category base.

###ELASTIC SEARCH
There is no fun in not having predictive search? Since Google introduced it, we often use it to fortify a search's existence, so it was a natural selection to add this feature.

###MAILBOXER
This was a tough one, do we add a socket for a chat application or do we include classical messages. Classical mail boxing seemed the right way to approach messaging between users, this fits seemlessly with the rest of the design.

###jQUERY
This was a must have, the interface jQuery provides along with all it's luxuries made it quite impossible to ignore in our design stage.

###COUNTRY SELECT
So as we mentioned, this was going to be near MVP, and one of our features needed to know where you're from. How do we integrate every single country in the world in a select tag? country_select!

###GOOGLE MAPS
From point A to point B, Google Maps is there to help you in setting your directions and letting you know where you have to go, but wait, you wouldn't want products from all over the world right? enter....

###GEOLOCATOR
This handy tool, uses a mile radius parameter to filter out all the products within a certain geographical range which allows users the flexibility of estimating how far this product will be.

###STRIPE
Hmmm, how do we pay? I wouldn't mind asking commmbank to help, but why do that when we have the luxury of stripe. It's integration allows for card processing among all retailers, making it convenient for both the users and us.

###UNDERSCORE
Functional programming, not to recreate the wheel, we injected underscoreJS to help fasten the trivial processes, to improve the overall time complexity of the program.

##ARCHITECTURE
Rails was the primary backend, but for the client side we employed JavaScript, and implemented AJAX when we needed to try reduce the number of reloads for a single result.

##Contributors
The project was completed by Daniel, Miles and Vaibhav.

###THANK YOU!
