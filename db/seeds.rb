
User.destroy_all
Listing.destroy_all
Cart.destroy_all
Comment.destroy_all
UserRating.destroy_all
# ------------------------------
#users:
puts "Seeding Users..."
@u1 = User.create(username: "PowHound")
@u2 = User.create(username: "JerryFinder")
@u3 = User.create(username: "ParkRat")
@u4 = User.create(username: "SkiBunni")
@u5 = User.create(username: "SkiTheEast")


# user.each |user| User.create(user)
# ------------------------------

#listings:
puts "Seeding Listings..."
@l1= Listing.create(user: @u1, title: "Armada JJs", description: "Men's 186 Armada JJ's. Used for two seasons. Have a lot of life left in them.", image_url: "armada.png")
@l2= Listing.create(user: @u1,title: "Dynafit Boots", description: "Women's Dynafit touring boots. Used once, decided touring wasn't for me", image_url: "dynafitboots.png")
@l3= Listing.create(user: @u3,title: "POC helmet", description:"Decided I wanted a different color, never used", image_url: "pochelmet.png")
@l4= Listing.create(user: @u5,title: "Smith Goggles", description: "Lightly used. Never left in car overnight, no fogging issues", image_url: "goggles.png")
@l5= Listing.create(user: @u2,title: "Jump Suit", description:"Retro 80's jumpsuit. Size Medium. Great for end of season ski costumes", image_url: "jumpsuit.png")
@l6= Listing.create(user: @u1,title: "Beacon", description:"Mammut Barryvox S Beacon", image_url: "mammut.png")
@l7= Listing.create(user: @u5,title: "Shovel", description:"Black Diamond back country shovel", image_url: "shovel.png")
@l8= Listing.create(user: @u1,title: "BC Pack", description:"Men's BC pack, airbag never deployed, still has warranty", image_url: "bcpack.png")
@l9= Listing.create(user: @u4,title: "XC skis", description:"Rossignol evo cross country skis, 2015 model, size M", image_url: "xcskis.png")
@l10= Listing.create(user: @u3,title: "Poles", description:"Salomon Arctic S3 Ski poles, size 110cm", image_url: "poles.png")

# listing.each |listing| Listing.create(listing)
# -----------------------
# comment = [
puts "Seeding Comments..."
  @m1=Comment.create(message: "Wish these were in  my size, best skis ever! ", user: @u1, listing: @l1 ),
  @m2=Comment.create(message: "I live localy, can I come pick up this weekend?", user: @u2 , listing: @l3 ),
  @m3=Comment.create(message: "Horrible experience with this user, do not buy from!!", user: @u4 , listing: @l4),
  @m4=Comment.create(message: "Are these collapsable? ", user: @u3 , listing: @l10 ),
	@m5=Comment.create(message: "What do the bottoms look like?", user: @u1, listing: @l2 ),
	@m6=Comment.create(message: "Great price!", user: @u5 , listing: @l6),
	@m7=Comment.create(message: "Love this brand!", user: @u4, listing: @l5),
	@m8=Comment.create(message: "Snazzy!", user: @u2, listing: @l5 )
# ]
# comment.each |comment| Comment.create(comment)
# --------------------------
# cart = [
puts "Seeding Carts..."
  @c1=Cart.create(listings: [@l2], user: @u1)
  @c2=Cart.create(listings: [@l5], user: @u4)
  @c3=Cart.create(listings: [@l6], user: @u5)
  @c4=Cart.create(listings: [@l10], user: @u3)
	@c5=Cart.create(listings: [@l3], user: @u2)
# ]
# cart.each |cart| Cart.create(cart)

# user_rating = [
  # r1=Rating.create(user: u1, listing: l5, 7),
  # r2=Rating.create(user: u2, listing: l4, 8),
  # r3=Rating.create(user: @u3, listing: l2, 9),
  # r4=Rating.create(user: u4, listing: l1, 4),
	# r5=Rating.create(user: u5, listing: l3, 6)
# ]
# user_rating.each |user_rating| UserRating.create(user_rating)
