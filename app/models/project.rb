class Project < ApplicationRecord
#devise :database_authenticatable, :registerable,
      #   :recoverable, :rememberable, :validatable, :confirmable
#validates :title, :description, :notes, :performer, :status
	#belongs_to :user
	has_many :tasks	
end
