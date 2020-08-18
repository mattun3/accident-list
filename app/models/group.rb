class Group < ApplicationRecord
	def self.search(search)   
		if search  
			where(['place LIKE ?', "%#{search}%"])   
		else  
			all  
		end  
end 
end
