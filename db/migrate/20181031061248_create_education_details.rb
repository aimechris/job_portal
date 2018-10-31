class CreateEducationDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :education_details do |t|
      t.references :user_account
      t.string :certificate_degree_name, :limit => 50
      t.string :major, :limit => 50
      t.string :institute_university_name, :limit =>50
      t.date :starting_date
      t.date :completion_date
      t.integer :percentage, null: true
      t.integer :cgpa, null: true
      t.timestamps
    end
  end
end
