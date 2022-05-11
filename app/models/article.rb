class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy
  has_many :messages, as: :messagetable


  validates :terms_of_service, acceptance: true
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
