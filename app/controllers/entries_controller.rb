class EntriesController < ApplicationController
	def index
		@project = Project.find params[:project_id]
		@entry = @project.entry
		render 'show_entries'
	end

	def new 
    	@project = Project.find params[:project_id]
    	@entry = @project.entry.new
  	end 

  	def create 
		@project = Project.new params[:project_id]
		@entry = Entry.new entry_params
	  
	    if @entry.save 
	      redirect_to action: 'new', controller: 'entries', project_id: @project.id 
	    else 
	      render 'entries/new' 
	    end 
	end

	private
	def entry_params 
        params.require(:entry).permit(:hours, :minutes, :date, :comments) 
  	end 
end
