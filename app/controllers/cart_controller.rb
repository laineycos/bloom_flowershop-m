class CartController < ApplicationController

before_action :authenticate_user!, except: [:index] # authenticate user before any action, allow only index controller

  def add
     id = params[:id]
       #if the cart has already been created, use the existing cart else create a new cart
       if session[:cart] then
         cart = session[:cart]
       else
        session[:cart] = {}
        cart = session[:cart]
       end
    
      #if the product has already been added to the cart, increment the value else set the value to 1
      if cart[id] then
         cart[id] = cart[id] + 1
      else
        cart[id] = 1
      end
    redirect_to :action => :index
  end #end add method
 
  def remove
         @cart = Cart.find(params[:id])
         @cart.delete
         redirect_to :action => :index
  end
#def remove
#   id = params[:id]
#    @cart[id]=@cart[id] - 1
#  end
  
  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end
  
  def index
    #if there is a cart, pass it to the page for display else pass an empty value
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end

end