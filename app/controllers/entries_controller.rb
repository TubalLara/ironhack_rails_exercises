class EntriesController < ApplicationController
	def index
		@project = Project.find params[:project_id]
		@entries = @project.entries
		render 'show_entries'
	end

	def new 
    	@project = Project.find params[:project_id]
    	@entries = @project.entries.new params[:hours, :minutes, :comments]
  	end 

  	def create 
	  @entries = Entry.new entry_params
	  
	    if @entries.save 
	      redirect_to action: 'new', controller: 'entries' 
	    else 
	      render 'entries/new' 
	    end 
	end

	private
	def entry_params 
        params.require(:entries).permit(:hours, :minutes, :date, :comments) 
  	end 
end
