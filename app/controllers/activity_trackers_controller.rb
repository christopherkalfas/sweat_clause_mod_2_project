class ActivityTrackersController < ApplicationController
    before_action :authenticate!, except: [:index, :show]

    def index
        @activity_trackers = ActivityTracker.all
    end

    

    def new
        @activity_tracker = ActivityTracker.new
        @challenges = Challenge.all
    end

    def create 
        @activity_tracker = current_user.activity_trackers.build(activity_tracker_params)
        if @activity_tracker.save 
            redirect_to challenge_path(@activity_tracker.challenge)
        else  
            render :new 
        end 
    end 

    def edit
        @activity_tracker = ActivityTracker.find(params[:id])
    end

    def update 
        @activity_tracker = ActivityTracker.find(params[:id])
        if @activity_tracker.update(activity_tracker_params)
            redirect_to activity_tracker_path(@activity_tracker)
        else
            render :edit
        end 
    end 
    
    
    def destroy
        @activity_tracker = ActivityTracker.find(params[:id])
        @activity_tracker.destroy
        redirect_to activity_trackers_path(@activity_tracker)
    end 

    private 

    def activity_tracker_params 
        params.require(:activity_tracker).permit(:user_id, :challenge_id, :day, :user_reps)
    end 

end
