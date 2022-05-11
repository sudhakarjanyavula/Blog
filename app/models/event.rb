class Event < ApplicationRecord
	has_many :messages, as: :messagetable
end
