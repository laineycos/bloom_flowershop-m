class PageController < ApplicationController
  before_action :authenticate_user!, except: [:index, :about, :faqs, :contact] #restric action for user on some pages or use "only:" for specifying 1 action for user to be banned
  
  def home
  end

  def about
  end

  def faqs
  end

  def contact
  end
  
  def cart
  end
  
end
