class Box < ActiveRecord::Base
	belongs_to :order
	has_one :widget

	#validates_numericality_of :size

		# Validations
	validates :color,
											:presence => true,
											:uniqueness => true

	
end
