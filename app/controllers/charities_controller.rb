class CharitiesController < ApplicationController
    before_action :authenticate!, except: [:index, :show]
    def index
        @charities  = Charity.all
    end

    def show
        @charity = Charity.find(params[:id])
    end

    def new
        @charity = Charity.new
    end
    
    
    


    def create 
        @charity = current_user.charities.build(charity_params)
            if @charity.save 
                redirect_to charity_path(@charity)
            else 
                render :new
            end 
    end
    
    def edit 
        @charity = Charity.find(params[:id])
    end 

    def update 
        @charity = Charity.find(params[:id])
        if @charity.update(charity_params)
            redirect_to charity_path(@charity)
        else
            render :edit
        end 
    end 


    def destroy 
        @charity = Charity.find(params[:id])
        @charity.destroy
        redirect_to charities_path
    end 

    private 

    def charity_params 
        params.require(:charity).permit(:name, :description, :url)
    end 

end
