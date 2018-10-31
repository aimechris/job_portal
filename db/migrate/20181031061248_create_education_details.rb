class CreateEducationDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :education_details do |t|
      t.references :user_account
      t.string :certificate_degree_name, :limit => 50
      t.string :major, :limit => 50
      t.string :institute_university_name, :limit =>50
      t.date :starting_date
      t.date :completion_date, null: true
      t.integer :percentage, :limit => 8, null: true
      t.integer :cgpa, :limit => 8, null: true
      t.timestamps
    end
  end
end
