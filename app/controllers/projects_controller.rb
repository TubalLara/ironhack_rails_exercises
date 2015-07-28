class ProjectsController < ApplicationController
	def index
		@projects = Project.order("created_at DESC").limit(10)
		
	end
end
