class CreateJobPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :job_posts do |t|
      t.integer :posted_by_id
      t.references :job_type
      t.references :company
      t.string :is_company_name_hidden, :limit => 1
      t.date :created_date
      t.string :job_description
      t.references :job_location_id
      t.string :is_active, :limit => 1
      t.timestamps
    end
  end
end
