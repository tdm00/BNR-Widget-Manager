class Widget < ActiveRecord::Base
	belongs_to :box
	has_many :categorizations
	has_many :categories, :through => :categorizations
end
