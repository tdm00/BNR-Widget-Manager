class WidgetsController < ApplicationController

  

  def filter
    @widgets = Widget.find_all_by_size(params[:size])
    respond_to do |format|
      format.html { render action: "index" }
      format.json { render json: @widgets }
    end
  end

  # GET /widgets
  # GET /widgets.json
  def index
    @widgets = Widget.all(:order => :name)
    #debugger
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @widgets }
      format.rss  { render :layout => false }
      format.atom # index.atom.builder
    end
  end

  # GET /widgets/1
  # GET /widgets/1.json
  def show
    if params[:name]
      @widget = Widget.find_by_name(params[:name])
    else
      @widget = Widget.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @widget }
    end
  end

  # GET /widgets/new
  # GET /widgets/new.json
  def new
    @widget = Widget.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @widget }
    end
  end

  # GET /widgets/1/edit
  def edit
    @widget = Widget.find(params[:id])
  end

  # POST /widgets
  # POST /widgets.json
  def create
    @widget = Widget.new(params[:widget])
    respond_to do |format|
      if @widget.save
        format.html { redirect_to @widget, notice: 'Widget was successfully created.' }
        format.json { render json: @widget, status: :created, location: @widget }
      else
        format.html { render action: "new" }
        format.json { render json: @widget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /widgets/1
  # PUT /widgets/1.json
  def update
    @widget = Widget.find(params[:id])

    respond_to do |format|
      if @widget.update_attributes(params[:widget])
        format.html { redirect_to @widget, notice: 'Widget was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @widget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /widgets/1
  # DELETE /widgets/1.json
  def destroy
    @widget = Widget.find(params[:id])
    @widget.destroy

    respond_to do |format|
      format.html { redirect_to widgets_url }
      format.json { head :no_content }
    end
  end

end
