class EntriesController < ApplicationController
	def index
		@project = Project.find_by(id: params[:id])
		@entries = @project.entries
		render 'show_entries'
	end
end
