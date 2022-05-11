class Message < ApplicationRecord
  belongs_to :messagetable, polymorphic: true
end
