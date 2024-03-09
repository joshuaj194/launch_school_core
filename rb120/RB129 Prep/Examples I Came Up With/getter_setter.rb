class Human
	attr_reader :name

	def initialize(name)
	@name = name
	end

	def set_name(name)
		self.name = name
	end


	private

	attr_writer :name

end

josh = Human.new("Josh")
puts josh.name

josh.set_name("Jacob") 
puts josh.name

