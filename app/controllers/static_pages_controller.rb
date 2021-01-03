class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def thankyou
    @order=Order.find(params[:id])
    @order.update_attribute(:status, "Paid With Paypal")
  end
  def category
    category = params[:title]
    @Products = Product.where("category like ? ", category)
  end
  
end
