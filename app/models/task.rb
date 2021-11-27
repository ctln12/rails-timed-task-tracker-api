class Task < ApplicationRecord
  has_many :sessions, dependent: :destroy

  validates :name, presence: true
  validates_inclusion_of :completed, in: [true, false]
end
