module BoxesHelper
	# returns an array of colors and ids for boxes
  def box_options
    Box.all.collect {|b| [ b.color, b.id ] }
  end
end
