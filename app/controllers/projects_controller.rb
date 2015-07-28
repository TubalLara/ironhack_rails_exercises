class ProjectsController < ApplicationController
	def index
		@projects = Project.order("created_at DESC").limit(10)		
	end

	def show
		unless @project = Project.find_by(id: params[:id])
			render 'no_projects_found'
		end
	end
end
