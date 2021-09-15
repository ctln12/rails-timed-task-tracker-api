class Task < ApplicationRecord
  validates :name, presence: true
  validates_inclusion_of :completed, in: [true, false]
end
