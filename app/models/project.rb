class Project < ActiveRecord::Base
	has_many :entries
	def self.iron_find(id)
		where("id=?", id).first
	end

	def self.clean_old
		where("created_at < ?", Date.current - 7.days).delete_all		
	end

	def self.last_ten_created
		order("created_at DESC").limit(10)
	end
end
