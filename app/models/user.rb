class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
has_many :projects
has_many :tasks, through: :projects
validates :name, :email, presence: true
validates :name, exclusion: {in: %w(Admin BadDog), message: "Name %(value) is reserved."}
validates :name, length: {in: 5..30}
#validates :email, format: { with: /^[_A-z0-9-]+(\.[_A-z0-9-]+)*@[A-z0-9-]+(\.[A-z0-9-]+)*(\.[A-z]{2,4})$/, message: 'Only emails allowed' }
#validates :email, format: { without: /test.com$/, message: 'Test emails are not allowed' }


scope :user, -> { where role: '0' }
def set_default_role
    self.role ||= :user
  end
end
