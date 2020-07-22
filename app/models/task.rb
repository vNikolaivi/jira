class Task < ApplicationRecord
  belongs_to :project, :optional => true
  #belongs_to :user
  validates :title, presence: true
  PRIORITIES = [
      ['low', 1],
      ['medium', 2],
      ['high', 3]
  ]

  def complete!
    self.completed = true
    save
  end
end
