class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  expose(:order)

  # GET /orders
  # GET /orders.json
  def index
    add_breadcrumb 'Orders', orders_path
    @orders = current_user.orders
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    add_breadcrumb 'Orders', orders_path
  end

  # POST /orders
  # POST /orders.json
  def create
    cart = Cart.find(params[:id])
    @order = Order.new(cart: cart, user: current_user)
    current_user.carts.create

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { redirect_to root_url, alert: 'Missing translation for failure message' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def collect
    order.collect!
    redirect_to admin_index_url
  end

  def return
    order.return!
    redirect_to admin_index_url
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:cart_id, :user_id, :state)
    end
end
