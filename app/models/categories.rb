class Categories < ActiveRecord::Base
	has_many :categorizations
	has_many :widgets, :through => :categorizations
end
