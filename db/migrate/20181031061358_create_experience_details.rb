class CreateExperienceDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :experience_details do |t|
      t.string :is_current_job
      t.date :start_date
      t.date :end_date
      t.string :job_title, :limit => 50
      t.string :company_name, :limit => 100
      t.string :job_location_city, :limit => 50
      t.string :job_location_state, :limit => 50
      t.string :job_location_country, :limit => 50
      t.text :description, :limit => 4000 
      t.timestamps
    end
  end
end
