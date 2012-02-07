class Categorizations < ActiveRecord::Base
	belongs_to :widget
	belongs_to :category
end
