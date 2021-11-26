class Setting < ApplicationRecord
  validates :focus_time, presence: true
  validates :short_break, presence: true
  validates :long_break, presence: true
  validates :number_sessions, presence: true
  validates :duration, presence: true
  validates_inclusion_of :focusing, in: [true, false]
  validates :session_count, presence: true
end
