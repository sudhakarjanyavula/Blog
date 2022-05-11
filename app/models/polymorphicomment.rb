class Polymorphicomment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
end
