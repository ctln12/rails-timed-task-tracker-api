class Session < ApplicationRecord
  belongs_to :task, optional: true

  validates_inclusion_of :completed, in: [true, false]
end
