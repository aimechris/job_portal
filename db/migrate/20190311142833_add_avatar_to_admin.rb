class AddAvatarToAdmin < ActiveRecord::Migration[5.1]
  def change
    add_attachment :admins, :avatar
  end
end
