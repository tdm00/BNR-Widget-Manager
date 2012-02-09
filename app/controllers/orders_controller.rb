class OrdersController < ApplicationController
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(params[:order])

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

  # POST /add_box/1?box_id=1
  def add_box
    @order = Order.find(params[:id])
    @box = Box.find(params[:box_id])

    respond_to do |format|
      if !@order.boxes.include?(@box) && @order.boxes << @box
        flash[:notice] = 'Box was successfuly added to order.'
        format.html { redirect_to(@order) }
        format.json  { head :ok }
        format.js
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # POST /destroy_box/1?box_id=1
  def remove_box
    @order = Order.find(params[:id])
    @box = Box.find(params[:box_id])
    respond_to do |format|
      if @order.boxes.delete(@box)
        flash[:notice] = 'Box was successfuly removed from the order.'
      end
      format.html { redirect_to(@order) }
      format.json  { head :ok }
      format.js {}
    end    


    #@box = Box.find(params[:box_id])
    #respond_to do |format|
    #  if @order.boxes << @box
    #    flash[:notice] = 'Box was successfuly added to order.'
    #  end
    #  format.html { redirect_to(@order) }
    #  format.json  { head :ok }
    #end    
  end
end
