class User < ApplicationRecord

	before_validation :check_email, on: :create

	#after_validation :check_mail, on: [:create, :update]

	private

    def check_email
    	# binding.pry
        if email.blank?
      		errors.add(:you, "Must be give your email")
      	end
    end

   	
    before_create do
    	puts "Hello World"
    end

    after_create :display_location

	def display_location
		if self.location.present?
			puts "============= #{self.location}============"
		end
	end

	after_create_commit :log_user_saved_to_db
  
    private
  	def log_user_saved_to_db
  		puts 'User was saved to database'
  	end

  	after_save do
  		puts "#{self.name} person was saved"
  	end



  	after_destroy :destroy_action

  	def destroy_action
  		puts "User destroy"
  	end

end




	
















=begin
	

	after_touch do |user|
		puts "You touch the User"
	end
end

def check_mail
    	#binding.pry
      	if self.email = email.blank?
    		errors.add(you: "Must enter your email")
      	end
    end


	




  after_initialize do |user|
    puts "You have initialized an object!"
  end

  after_find do |user|
    puts "You have found an object!"
  end
end
=end
