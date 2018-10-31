class CreateSeekerProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :seeker_profiles do |t|
      t.references :user_account
      t.string :first_name, :limit => 50
      t.string :last_name, :limit => 50
      t.decimal :current_salary, :precision => 15, :scale => 2, null: true
      t.string :is_annually_monthly, :limit => 1, null: true
      t.string :currency, :limit => 50, null: true
      t.timestamps
    end
  end
end
