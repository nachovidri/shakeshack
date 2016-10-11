
class Milkshake
	attr_accessor :base_price, :ingredients

	def initialize
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient(ing)
		@ingredients.push(ing)
		# @base_price = @base_price + ing.price
	end

	def price_of_milkshake
		total_price_of_milkshake = base_price
		@ingredients.each do |ingredient|
			total_price_of_milkshake = total_price_of_milkshake + ingredient.price
		end

		return total_price_of_milkshake
	end
end

class Ingredient
	attr_accessor :name, :price

	def initialize (name, price)
		@name = name
		@price = price
	end
end

class ListOfMilkshakes
	
	def initialize
		@list_of_milkshakes = []
	end

	def add_milkshake (milkshake)
		@list_of_milkshakes.push(milkshake)
	end
	
	def checkout_milkshake
		@list_of_milkshakes.each do |milkshake|
			puts milkshake.price_of_milkshake
		end
	end

end

banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 10)
strawberry = Ingredient.new("Strawberry", 5)

lista_batidos = ListOfMilkshakes.new

nizars_milkshake = Milkshake.new
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
lista_batidos.add_milkshake(nizars_milkshake)

nachos_milkshake = Milkshake.new
nachos_milkshake.add_ingredient(strawberry)
nachos_milkshake.add_ingredient(chocolate_chips)
lista_batidos.add_milkshake(nachos_milkshake)

jaimes_milkshake = Milkshake.new
jaimes_milkshake.add_ingredient(strawberry)
jaimes_milkshake.add_ingredient(banana)
lista_batidos.add_milkshake(jaimes_milkshake)

# puts "El precio base del batido de Nizar es #{nizars_milkshake.base_price}"
# puts "El precio total del batido de Nizar es #{nizars_milkshake.price_of_milkshake}"
# puts "Y tiene estos ingredientes:"
# nizars_milkshake.ingredients.each do |ing|
# 	puts ing.name
# end

lista_batidos.checkout_milkshake







