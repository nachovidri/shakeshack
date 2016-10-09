
class MilkShake
	attr_accessor :base_price, :ingredients

	def initialize
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient(ing)
		@ingredients.push(ing)
		@base_price = @base_price + ing.price
	end

	def price_of_milkshake
		
	end
end

class Ingredient
	attr_accessor :name, :price

	def initialize (name, price)
		@name = name
		@price = price
	end
end

banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 10)

nizars_milkshake = MilkShake.new
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

puts nizars_milkshake.base_price
nizars_milkshake.ingredients.each do |ing|
	puts ing.name
end



