class WidgetObserver < ActiveRecord::Observer
  def after_create(widget)
    #Notifications.comment("admin@do.com", "New comment was posted", comment).deliver
    Notifications.widget_creation(widget).deliver
  end
end