class ShoppingCart
	def initialize
		@items = []
	end

	def add_item(item)
		@items.push(item)
	end

		def price
		total_price = 0
  		@items.each do |item|
  			total_price += item.price
  		end
  		total_price
	end
end

class Item
	attr_reader :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end

class Houseware < Item
	def price
		price = @price
		if price > 100 
			price = price * 0.95
		else
			price = price
		end
		price
	end
end

class Fruit < Item
	def price
		price = @price
		weekend = Time.now
		if weekend.saturday? || weekend.sunday?
			price = price * 0.9
		else
			price = price
		end
		price
	end
end

#Store!

vacuum = Houseware.new("Vacuum", 150)
bananas = Fruit.new("Banana", 10)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

#shopper

vals_cart = ShoppingCart.new
vals_cart.add_item(oj)
vals_cart.add_item(rice)

puts vals_cart.price
