class AddUserAccountToExperienceDetails < ActiveRecord::Migration[5.1]
  def change
    add_reference :experience_details, :user_account, foreign_key: true
  end
end
