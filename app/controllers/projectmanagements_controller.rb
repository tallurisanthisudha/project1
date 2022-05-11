class ProjectmanagementsController < ApplicationController
    before_action :find_project, only:[:edit, :destroy, :update]

    def find_project
        @project = Projectmanagement.find(params[:id])
    end

    def edit
    end

    def destroy
        @project.destroy
        redirect_to projectmanagements_path

    end

    def update
        if @project.update(project_params)
            redirect_to projectmanagements_path
        else
            render "edit"
        end
    end

    def new

        @project = Projectmanagement.new
        
    end
        
    def create
        
        @project= project.new(projectsparams)
        
        if @project.save
            redirect_to projectmanagements_path
        else
            render 'new'
        end
        #render plain: @holidays.errors.inspect
        
        
    end
        
    def projectsparams
        
        params.require(:projectmanagement).permit(:Project_Name , :Project_Description , :Edit_project , :Delete_project)
        
    end

    def index
        @projects =Projectmanagement.all
    end 
end
