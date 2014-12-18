class OrdersController < ApplicationController
	def destroy
<<<<<<< HEAD
	  current_order.destroy
	  session[:order_id] = nil
	  redirect_to root_path, :notice => "Basket emptied successfully."
	end
=======
		current_order.destroy
		session[:order_id] = nil
		redirect_to root_path, :notice => "Basket emptied successfully!"		
	end

>>>>>>> d6aac97474e9a29fa846dd6d467eeb08546ccca9
end
