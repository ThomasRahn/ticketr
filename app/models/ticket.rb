class Ticket < ApplicationRecord
  has_many :comments
  validates :task, presence: true,
  					length: {minimum: 5}


  def complete
  	is_completed = true;
  end
end
