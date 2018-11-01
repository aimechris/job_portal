class UserType < ApplicationRecord
  has_many :user_accounts
  validates_presence_of :user_type_name
end
