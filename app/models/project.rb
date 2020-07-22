class Project < ApplicationRecord
#devise :database_authenticatable, :registerable,
      #   :recoverable, :rememberable, :validatable, :confirmable
#validates :title, :description, :notes, :performer, :status
	#belongs_to :user
	has_many :tasks
validates :title, presence: true
def task_attributes=(task_attributes)
if task_attributes[:title].present?
self.tasks.build(task_attributes)
end
end
end
