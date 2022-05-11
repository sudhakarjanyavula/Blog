class Student < ApplicationRecord

	has_and_belongs_to_many :courses
	validates :name, :email, presence: true
end
