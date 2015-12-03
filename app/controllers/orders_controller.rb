class OrdersController < ApplicationController

	def create
		order_post=params.require(:order).permit(:user_id, :movie_id, :movie_title)
		@orders = current_user.orders.build(order_post)

		if @orders.save
			redirect_to root_path
		end



  end


  def show
    if current_user.orders
       @orders = current_user.orders
    else
       redirect_to movie_path
end

end
end
