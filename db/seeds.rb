
User.destroy_all
Listing.destroy_all
Cart.destroy_all
Comment.destroy_all
UserRating.destroy_all
------------------------------
user = [
  {user_name: "PowHound", rating_id: 5},
  {user_name: "JerryFinder", rating_id: 4},
  {user_name: "ParkRat", rating_id: 2},
  {user_name: "SkiBunni", rating_id: 3}
	{user_name: "SkiTheEast", rating_id: 3}

]
users.each {|user| User.create(user)}
------------------------------

listing = [
  {title: "Armada JJs", description: " Men's 186 Armada JJ's. Used for two seasons. Have a lot of life left in them.", image_url: " ", user_id: 1},
  {title: "Dynafit Boots", description: "Women's Dynafit touring boots. Used once, decided touring wasn't for me", image_url: " ", user_id: 5},
  {title:"POC helmet", description:"Decided I wanted a different color, never used", image_url: "", user_id: 3},
  {title:"Smith Goggles", description:" Lightly used. Never left in car overnight, no fogging issues", image_url: " ", user_id: 2},
  {title:"Jump Suit", description:"Retro 80's jumpsuit. Size Medium. Great for end of season ski costumes", image_url: " ", user_id: 2},
  {title:"Beacon", description:"Mammut Barryvox S Beacon", image_url: " ", user_id: 1},
  {title:"Shovel", description:"Black Diamond back country shovel. $20 obo", image_url: "", user_id: 3},
  {title:"BC Pack", description:"Airbag never deployed, asking $200 O.B.O ", image_url: "", user_id: 1},
  {title:"XC skis", description:"Rossignol evo cross country skis, 2015 model, size M", image_url: " ", user_id: 2},
  {title:"Poles", description:"Salomon Arctic S3 Ski poles, size 110cm", image_url: " ", user_id: 4}
]
-----------------------
comment = [
  {message: "Wish these were in  my size, best skis ever! ", user_id: 1, listing_id: 1 },
  {message:  "I live localy, can I come pick up this weekend?", user_id: 2 , listing_id: 3 },
  {message: " Horrible experience with this user, do not buy from!!", user_id: 4 , listing_id: 4},
  {message: "Are these collapsable? ", user_id: 3 , listing_id: 10 },
	{message: "What do the bottoms look like?", user_id: 1, listing_id: 2 },
	{message: "Great price!", user_id: 5 , listing_id: 6},
	{message: "Love this brand!", user_id: 4, listing_id: 5 },
	{message: "Snazzy!", user_id: 2 ,listing_id: 5 }
]

--------------------------
cart = [
  {listing_id: 2, user_id: 1},
  {listing_id: 5, user_id: 4},
  {listing_id: 6, user_id: 5},
  {listing_id: 10, user_id: 3},
	{listing_id: 3, user_id: 2}
]

--------------------------

user_rating = [
  {listing_id: 3, user_id: 1},
  {listing_id: 5, user_id: 2},
  {listing_id: 2, user_id: 3},
  {listing_id: 7, user_id: 4},
	{listing_id: 9, user_id: 5}
]
