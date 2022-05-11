class Person < ApplicationRecord

	validates :phone_no, :phone_no_2, :phone_no_3, presence: true

	before_create :greeting_message

	before_create do 
		puts "Hello World"
	end
end




=begin
	
	validate :phone_number, on: :create
	def phone_number
		if (phone_no.blank? && phone_no_2.blank? && phone_no_3.blank?)
			errors.add(:you, "Must be Given Atleast one number")
		end
	end
end
=end
