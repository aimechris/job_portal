class SeekerProfile < ApplicationRecord
  belongs_to :user_account
  validates_presence_of :first_name, :last_name
end
