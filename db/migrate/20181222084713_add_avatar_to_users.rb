class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
    add_attachment :user_accounts, :user_image
  end
end
