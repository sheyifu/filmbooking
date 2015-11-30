class UsersController < ApplicationController
  attr_accessor :remember_token

      def show
        @user = User.find(params[:id])
      end

      def new
        @user = User.new
      end
    

    def create
        secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
        @user = User.new(secure_params)
        if @user.save
          remember @user
        	flash[:success] = "Welcome to the Art Film Booking APP!" 
        	redirect_to @user
       # Handle a successful save.
        else
        render 'new'     # NEW LINE      
         end
    end
end