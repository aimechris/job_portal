class CreateUserTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_types do |t|
      t.string :user_type_name, :limit => 20
      t.timestamps
    end
  end
end
