class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def thankyou
  end
  def category
    category = params[:title]
    @Products = Product.where("category like ? ", category)
  end
  
end
