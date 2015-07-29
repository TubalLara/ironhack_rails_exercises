class ProjectsController < ApplicationController
	def index
		@projects = Project.last_ten_created	
		if @projects.empty?
			render template: 'projects/no_projects'
		end
	end

	def show
		unless @project = Project.find_by(id: params[:id])
			render 'projects/no_projects_found'
		end
	end

	def new 
    	@project = Project.new params[:name, :description]
  	end 

  	def create 
	  @project = Project.new entry_params
	  
	    if @project.save 
	      redirect_to action: 'new', controller: 'projects' 
	    else 
	      render 'projects/new' 
	    end 
	end

	private
	def entry_params 
        params.require(:project).permit(:name, :description) 
  	end 
end
