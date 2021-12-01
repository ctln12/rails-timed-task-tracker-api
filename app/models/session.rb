class Session < ApplicationRecord
  belongs_to :task, optional: true

  typed_store :settings do |s|
    s.integer :focus_length, default: 25
    s.integer :short_break_length, default: 5
    s.integer :long_break_length, default: 15
    s.integer :long_break_after, default: 4
  end

  validates_inclusion_of :completed, in: [true, false]
  validates :focus_length, :short_break_length, :long_break_length, :long_break_after, presence: true
  validates :focus_length, :short_break_length, :long_break_length, :long_break_after, numericality: { greater_than: 0 }
end
