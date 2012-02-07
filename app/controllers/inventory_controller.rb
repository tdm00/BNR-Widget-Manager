class InventoryController < ApplicationController

  def new
    @action = 'create'
    @widget = Widget.new
  end

  def create
  	@widget = Widget.create(params[:widget])
  	redirect_to controller: 'inventory', action: 'index', id: @widget.id
  end

  def show
  	@widget = Widget.find(params[:id])
  end

  def index
    @widgets = Widget.find(:all, :order => 'name ASC')
  end

  def edit
    @action = 'update'
    @widget = Widget.find(params[:id])
  end

  def update
    @widget = Widget.find(params[:id])
    @widget.update_attributes(params[:widget])
    flash[:success]="'#{@widget.name}' widget updated successfully!"
    redirect_to :action => 'index'
  end

  def delete
    @widget = Widget.find(params[:id])
    @widget.delete
    flash[:success]="'#{@widget.name}' widget OBLITEREATED successfully!"
    redirect_to :action => 'index'
  end

end
