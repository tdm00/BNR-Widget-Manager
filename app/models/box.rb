class Box < ActiveRecord::Base
	belongs_to :order
	has_one :widget
end
