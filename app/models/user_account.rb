class UserAccount < ApplicationRecord
  belongs_to :user_type
  has_many   :user_logs
  # Seeker Relationship
  has_many   :seeker_profiles
  has_many   :education_details
  has_many   :experience_details
  has_many   :seeker_skill_sets
  # Job Relationship
  has_many   :job_posts, foreign_key: :posted_by_id 
  has_many   :job_post_activities

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :email, :password
end
