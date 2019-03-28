
User.destroy_all
Listing.destroy_all
Cart.destroy_all
Comment.destroy_all
UserRating.destroy_all
# ------------------------------
user = [
  u1= User.create({username: "PowHound"}),
  {username: "JerryFinder", rating_id: 4},
  {username: "ParkRat", rating_id: 2},
  {username: "SkiBunni", rating_id: 3},
	{username: "SkiTheEast", rating_id: 3}

]
user.each {|user| User.create(user)}
# ------------------------------

listing = [
u1.listing  {title: "Armada JJs", description: "Men's 186 Armada JJ's. Used for two seasons. Have a lot of life left in them.", image_url: "../app/assets/images/.armada.png ", user_id: 22},
  {title: "Dynafit Boots", description: "Women's Dynafit touring boots. Used once, decided touring wasn't for me", image_url: " ../app/assets/images/dynafitboots.png", user_id: 23},
  {title: "POC helmet", description:"Decided I wanted a different color, never used", image_url: "../app/assets/images/pochelmet.png", user_id: 24},
  {title: "Smith Goggles", description: "Lightly used. Never left in car overnight, no fogging issues", image_url: "../app/assets/images/goggles.png ", user_id: 25},
  {title: "Jump Suit", description:"Retro 80's jumpsuit. Size Medium. Great for end of season ski costumes", image_url: " ", user_id: 26},
  {title: "Beacon", description:"Mammut Barryvox S Beacon", image_url: "../app/assets/images/mammut.png ", user_id: 27},
  {title: "Shovel", description:"Black Diamond back country shovel. $20 obo", image_url: "../app/assets/images/shovel.png ", user_id: 27},
  {title: "BC Pack", description:"Airbag never deployed, asking $200 O.B.O ", image_url: "../app/assets/images/bcpack.png ", user_id: 26},
  {title: "XC skis", description:"Rossignol evo cross country skis, 2015 model, size M", image_url: "../app/assets/images/xcskis.png ", user_id: 25},
  {title: "Poles", description:"Salomon Arctic S3 Ski poles, size 110cm", image_url: "../app/assets/images/poles.png ", user_id: 24}
]
listing.each {|listing| Listing.create(listing)}
# -----------------------
comment = [
  {message: "Wish these were in  my size, best skis ever! ", user_id: 1, listing_id: 1 },
  {message: "I live localy, can I come pick up this weekend?", user_id: 2 , listing_id: 3 },
  {message: "Horrible experience with this user, do not buy from!!", user_id: 4 , listing_id: 4},
  {message: "Are these collapsable? ", user_id: 3 , listing_id: 10 },
	{message: "What do the bottoms look like?", user_id: 1, listing_id: 2 },
	{message: "Great price!", user_id: 5 , listing_id: 6},
	{message: "Love this brand!", user_id: 4, listing_id: 5 },
	{message: "Snazzy!", user_id: 2 ,listing_id: 5 }
]
comment.each {|comment| Comment.create(comment)}
# --------------------------
cart = [
  {listing_id: 2, user_id: 1},
  {listing_id: 5, user_id: 4},
  {listing_id: 6, user_id: 5},
  {listing_id: 10, user_id: 3},
	{listing_id: 3, user_id: 2}
]
cart.each {|cart| Cart.create(cart)}

user_rating = [
  {user_id: 1, poster_id: 5, rating: 7},
  {user_id: 2, poster_id: 4, rating: 8},
  {user_id: 3, poster_id: 2, rating: 9},
  {user_id: 4, poster_id: 1, rating: 4},
	{user_id: 5, poster_id: 3, rating: 6}
]
user_rating.each {|user_rating| UserRating.create(user_rating)}
