class Challenge < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :players, class_name: 'User'

  validates :description, presence: true
end
