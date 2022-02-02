class ProjectController < ApplicationController
    before_action :logged_in_user, only: [:new]
    
    def new
        current_user.profile.experiences.find(params[:id].to_i).projects.create
    
        flash[:success] = "project added."
        redirect_to edit_url
    end

end
