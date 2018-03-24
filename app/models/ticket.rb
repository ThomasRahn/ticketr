class Ticket < ApplicationRecord
  has_many :comments
  validates :task, presence: true,
  					length: {minimum: 5}
end
