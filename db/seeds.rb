Project.create name: 'Ironhack', description: 'Ironhack is a...'

Project.create name: 'Time tracking app'

Project.create name: 'Recipes', description: 'Track my favourite recipes'

25.times do |project|
	

	project = Project.create name: project.to_s, description: 'This is project' + project.to_s
	
	project.entries.create(hours: 1, minutes: 30)
	
	
end


