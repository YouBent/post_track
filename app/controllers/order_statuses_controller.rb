class OrderStatusesController < ApplicationController
  
  def create
      @order = Order.find(params[:order_id])
      @order_status = @order.order_status.create(order_status_params)
      redirect_to order_path(Order.find(params[:order_id]))
  end
 
  def destroy
    @order_status = OrderStatus.find(params[:id])
    @order_status.destroy
 
    redirect_to order_path(Order.find(params[:order_id]))
  end
  
  private
    def order_status_params
      params.require(:order_status).permit(:status,:poster,:date)
    end
    
end
