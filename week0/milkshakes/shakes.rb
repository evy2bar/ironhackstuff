class Shake
	def initialize(flavor,price,ingredients)
		@flavor = flavor
		@price = price
		@ingredients = ingredients
	end
end
shake = Shake.new(“Chocolate”, 7, "banana")		