class Author < ApplicationRecord
  belongs_to :country

  has_many :posts, dependent: :destroy

  validates :name, presence: true
end
