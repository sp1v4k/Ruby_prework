require 'pry'
class ShakeShop
	attr_reader :milkshakes
	def initialize
		@milkshakes = []
	end

	def add_milkshake(milkshake) 
		@milkshakes.push(milkshake)
	end

	def list_milkshake
		@milkshakes.each do |i|
			puts i.milkshake_name
			print i.ingredients
		end	
	end
end

class MilkShake
	attr_reader :milkshake_name, :ingredients, :base_price
	
	def initialize(milkshake_name)
		@milkshake_name = milkshake_name
		@ingredients = []
		@base_price = 3
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def price_of_milkshake
		total_price_of_milkshake = @base_price
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.ingredient_price
		end
		total_price_of_milkshake
	end
end


class Ingredient
	attr_reader :ingredient_name, :ingredient_price
	
	def initialize(ingredient_name, ingredient_price)
		@ingredient_name = ingredient_name
		@ingredient_price = ingredient_price
	end
end


def print_option_menu
	puts "Welcome to sp1v4k Shake Shop!!!"
	puts "Chosse an option:\n"
	puts "1 - Add new shake"
	puts "2 - List all Milkshakes"
	puts "3 - Exit"
end

sp1v4k_shop = ShakeShop.new


print_option_menu

m_shake = nil    #Initialize local variables for object MilkShake class creation  
m_name = nil
option = nil

until option == "3" do
	option = gets.chomp
	if option == "1"
		until m_name == "stop" do
			i_name = nil 	#reset var to enter in ingredient loop	
			puts "Milkshake name (type 'stop' for no more Mikshakes additions)? "
			m_name = gets.chomp
			if m_name != "stop"
				m_shake = MilkShake.new(m_name)
				until i_name == "stop" do 
					puts "Add ingredient (type 'stop' for no more ingredients): "
					i_name = gets.chomp
					if i_name != "stop"
						puts "Price of ingredient? "
						i_price = gets.to_i
						in_gredient = Ingredient.new(i_name, i_price)
						m_shake.add_ingredient(in_gredient)
					end
				end
				sp1v4k_shop.add_milkshake(m_shake)
			end	
		end	
	
	elsif option == "2"
		puts sp1v4k_shop.list_milkshake
	elsif option == "3"
		puts "Thanks for using sp1v4k Shake Shop Management Software"	
	end
end
#puts m_shake.price_of_milkshake

#	binding.pry


#nizars_milkshake = MilkShake.new
#banana = Ingredient.new("Banana", 2)
#chocolate_chips = Ingredient.new("Chocolate Chips", 1)
#nizars_milkshake.add_ingredient(banana)
#nizars_milkshake.add_ingredient(chocolate_chips)
#sp1v4k_shop.add_milkshake(nizars_milkshake)
#
#sp1v4k_shop.list_milkshake