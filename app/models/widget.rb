class Widget < ActiveRecord::Base
	belongs_to :box
	has_many :categorizations
	has_many :categories, :through => :categorizations

	# Validations
	validates :name,
											:presence => true,
											:length => { :minimum => 3},
											:uniqueness => true

	validates :color,
											:inclusion => %w(Silver Grey Blue Green Yellow Red White Teal Almond Brown Black)

#return if color.blank?
end
