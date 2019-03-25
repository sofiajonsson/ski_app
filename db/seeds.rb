
User.destroy_all
Listing.destroy_all
Cart.destroy_all
Comment.destroy_all
UserRating.destroy_all
------------------------------
user = [
  {user_name: "PowHound", rating_id: 5 },
  {user_name: "JerryFinder", rating_id: 4 },
  {user_name: "ParkRat", rating_id: 2 },
  {user_name: "SkiBunni", rating_id: 3}
	{user_name: "SkiTheEast", rating_id: 3}

]
------------------------------

listing = [
  {title: "Armada JJs", description: "", image_url: " ", user_id: },
  {title: "Dynafit Boots", description: "Squirrel Girl", image_url: " ", user_id:  },
  {title:"POC helmet", description:"Spider-Gwen", image_url: " ", user_id:  },
  {title:"Smith Goggles", description:"The Wasp", image_url: " ", user_id:  },
  {title:"Mammut Beacon", description:"Scarlet Witch", image_url: " ", user_id:  },
  {title:"Probe", description:"Captain Marvel", image_url: " ", user_id:  },
  {title:"Shovel", description:"Dark Phoenix", image_url: " ", user_id:  },
  {title:"BC Pack", description:"Storm", image_url: " ", user_id:  },
  {title:"XC skis", description:"Shadowcat", image_url: " ", user_id:  },
  {title:"Poles", description:"Elektra", image_url: " ", user_id:  }
]
-----------------------
comment = [
  {message:"super strength", user_id: , listing_id: },
  {message:"flight", user_id: , listing_id: },
  {message:"super human senses", user_id: , listing_id: },
  {message:"elasticity", user_id: , listing_id: }
	{message:"super strength", user_id: , listing_id: },
	{message:"flight", user_id: , listing_id: },
	{message:"super human senses", user_id: , listing_id: },
	{message:"elasticity", user_id: , listing_id: }
]

--------------------------
cart = [
  {listing_id: , user_id:  },
  {listing_id: , user_id:  },
  {listing_id: , user_id:  },
  {listing_id: , user_id:  }
	{listing_id: , user_id:  },
  {listing_id: , user_id:  },
  {listing_id: , user_id:  },
  {listing_id: , user_id:  }
]

--------------------------

user_rating = [
  {listing_id: , user_id:  },
  {listing_id: , user_id:  },
  {listing_id: , user_id:  },
  {listing_id: , user_id:  }
]
