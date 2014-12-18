class ApplicationController < ActionController::Base
<<<<<<< HEAD
  # protect_from_forgery with: :exception

  private

=======
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private
  
  # Returns the active order for this session
>>>>>>> d6aac97474e9a29fa846dd6d467eeb08546ccca9
  def current_order
    @current_order ||= begin
      if has_order?
        @current_order
      else
<<<<<<< HEAD
        order = Shoppe::Order.create(:ip_address => request.ip)
=======
        order = Shoppe::Order.create(:ip_address => request.ip, :billing_country => Shoppe::Country.where(:name => "United Kingdom").first)
>>>>>>> d6aac97474e9a29fa846dd6d467eeb08546ccca9
        session[:order_id] = order.id
        order
      end
    end
  end
<<<<<<< HEAD

  def has_order?
    !!(
      session[:order_id] &&
      @current_order = Shoppe::Order.includes(:order_items => :ordered_item).find_by_id(session[:order_id])
    )
  end

  helper_method :current_order, :has_order?

=======
  
  # Has an active order?
  def has_order?
    session[:order_id] && @current_order = Shoppe::Order.includes(:order_items => :ordered_item).find_by_id(session[:order_id])
  end
  
  helper_method :current_order, :has_order?
  
>>>>>>> d6aac97474e9a29fa846dd6d467eeb08546ccca9
end