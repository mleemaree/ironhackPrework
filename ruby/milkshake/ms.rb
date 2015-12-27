class MilkShake
	def initialize
		@base_price = 3
    	@ingredients = [ ] 
	end

	def add_ingredient(ingredient)
    	@ingredients.push(ingredient)
  	end

  	def price_of_milkshake
  		total_price_of_milkshake = @base_price
  		@ingredients.each do |ingredient|
  			total_price_of_milkshake += ingredient.price
  		end
  		total_price_of_milkshake
  	end

end

class Ingredient
	attr_reader :name, :price
	def initialize (name, price)
		@name = name
		@price = price
	end
end


nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 7)
nizars_milkshake.add_ingredient(banana)

alberts_milkshake = MilkShake.new
whipped_cream = Ingredient.new("Whipped Cream", 2)
alberts_milkshake.add_ingredient(whipped_cream)

#puts alberts_milkshake.price_of_milkshake


class ShakeShack
	def initialize
		@milkshakes = []
	end

	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end

	def checkout
		total_checkout = 0
		@milkshakes.each do |milkshake|
			total_checkout += milkshake.price_of_milkshake
		end
		total_checkout
	end

end

nizars_checkout = ShakeShack.new
nizars_checkout.add_milkshake(nizars_milkshake)
nizars_checkout.add_milkshake(alberts_milkshake)

puts nizars_checkout.checkout
