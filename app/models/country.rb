class Country < ApplicationRecord
  has_many :authors, dependent: :restrict_with_error

  validates :name, presence: true
end
