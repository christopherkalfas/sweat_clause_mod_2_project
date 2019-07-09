class UsersController < ApplicationController
    before_action :authenticate!, except: [:index, :new]
    def index 
        @users = User.all 
    end  

    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
    end
    
    


    def create 
        @user = User.new(user_params)
            if @user.save 
                redirect_to users_path
            else 
                render :new
            end 
    end
    
    def destroy 
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end 

    private 

    def user_params 
        params.require(:user).permit(:name, :username, :password, :age, :height, :weight)
    end 


end
