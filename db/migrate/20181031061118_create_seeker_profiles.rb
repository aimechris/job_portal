class CreateSeekerProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :seeker_profiles do |t|
      t.references :user_account
      t.string :first_name, :limit => 50
      t.string :last_name, :limit => 50
      t.integer :current_salary
      t.string :is_annually_monthly, :limit => 1
      t.string :currency, :limit => 50
      t.timestamps
    end
  end
end
