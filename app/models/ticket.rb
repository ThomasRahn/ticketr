class Ticket < ApplicationRecord
  has_many :comments
  belongs_to :project
  belongs_to :user

  validates :task, presence: true,
  					length: {minimum: 5}
end
