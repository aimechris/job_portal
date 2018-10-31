class UserLog < ApplicationRecord
  belongs_to :user_account
  validate_presence_of :last_login_date, :last_job_apply_date
end
