class PledgesController < ApplicationController
    before_action :authenticate!, except: [:index, :show]

    def index
        @pledges  = Pledge.all
    end

    def show
        @pledge = Pledge.find(params[:id])
    end

    def new
        @pledge  = Pledge.new
        @charities = Charity.all
    end
    
    
    


    def create 
        @pledge = current_user.pledges.build(pledge_params)
            if @pledge.save 
                redirect_to pledge_path(@pledge)
            else 
                render :new
            end 
    end

    def edit
        @pledge = Pledge.find(params[:id])
    end

    def update 
        @pledge = Pledge.find(params[:id])
        if @pledge.update(pledge_params)
            redirect_to pledge_path(@pledge)
        else
            render :edit
        end 
    end 
    
    
    def destroy
        @pledge = Pledge.find(params[:id])
        @pledge.destroy
        redirect_to pledges_path
    end 

    private 

    def pledge_params 
        params.require(:pledge).permit(:amount, :pledge_id, :charity_id)
    end 

    
end
