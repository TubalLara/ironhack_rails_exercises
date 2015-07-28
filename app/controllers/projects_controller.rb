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
end
