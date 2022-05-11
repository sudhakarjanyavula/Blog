class News < ApplicationRecord
	has_many :messages, as: :messagetable
end
