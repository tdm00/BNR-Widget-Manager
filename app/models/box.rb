class Box < ActiveRecord::Base
	belongs_to :order
	has_one :widget

	scope :not_on_an_order, where({:order_id => nil})

	#validates_numericality_of :size

		# Validations
	validates :color,
											:presence => true,
											:uniqueness => true

	def description
		#"A brown cardboard box"
		#"A #{color} #{mateiral} box"
		return ["A", color, material, "box"].join(' ')
	end

	def description=(description)
		#"A brown cardboard box"
		split = description.split(' ')
		self.color split[1]
		self.material split[2]
	end

end
