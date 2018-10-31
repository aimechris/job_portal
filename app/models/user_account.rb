class UserAccount < ApplicationRecord
  belongs_to :user_type
  has_many   :user_logs
  has_many   :seeker_profiles
  has_many   :job_posts  
  has_many   :job_post_activities

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
