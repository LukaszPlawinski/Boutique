class UserController < ApplicationController
    
    def login
        session[:login] = 1
        session[:cart] = nil
        flash[:notice] = "Login sucessfull!!"
        redirect_to :controller => :products
    end
    
    def logout
        session[:login] = nil
        session[:cart] = nil
        flash[:notice] = "You have been successfully logged out!!"
        redirect_to :controller => :products
    end
end
