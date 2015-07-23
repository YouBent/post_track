class OrdersController < ApplicationController
  def new 
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
 
    if @order.save
      redirect_to orders_path
    else
      render 'new'
    end
  end
  
  def index
    @orders = Order.search(params[:search])
  end
  
  def show
    @order = Order.find(params[:id])
  end
  
  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
 
    if @order.update(order_params)
      redirect_to orders_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @order = Order.find(params[:id])
    @order.destroy
 
    redirect_to orders_path
  end
  
  def search
    
  end

  private
  def order_params
    params.require(:order).permit(:oid,:sender_name, :sender_phone, :sender_address, :receiver_name, :receiver_phone, :receiver_address)
  end
end
