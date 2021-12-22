class Task < ApplicationRecord
  has_many :sessions, dependent: :destroy

  validates :name, presence: true
  validates_inclusion_of :done, in: [true, false]

  after_save :create_session

  private

  def create_session
    Session.create! task: self, completed: done
  end
end
