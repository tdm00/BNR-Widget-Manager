require 'test_helper'

class WidgetTest < ActiveSupport::TestCase
 test "validations" do
	 # failure - needs name and size
	 widget = Widget.new()
	 assert_equal false, widget.valid?
		# failure - needs size
  widget = Widget.new(:name => "Wonder Widget")
  assert_equal false, widget.valid?
		# failure - needs color
  widget = Widget.new(:name => "Wonder Widget", :size => 5)
  assert_equal false, widget.valid?
  # success
  widget = Widget.new(:name => "Wonder Widget", :size => 5, :color => "Almond")
  assert_equal true, widget.valid?
	end
end
