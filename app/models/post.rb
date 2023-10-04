class Post < ApplicationRecord
  belongs_to :author

  validates :message, presence: true
end
