class ProjectController < ApplicationController
    def new

        @projects = Project.new
        
    end
        
    def create
        
        @projects= Project.new(projectsparams)
        
        @projects.save
        
        render plain: @projects.errors.inspect
        
        #redirect_to project_path
        
    end
        
    def projectsparams
        
        params.permit(:project_name , :client , :manager_id , :description , :client_time_zone , :shift_information , :project_type)
        
    end

    def projectmanagement
            @projects =Project.all
    end    
end
