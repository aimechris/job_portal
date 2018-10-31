class CreateJobPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :job_posts do |t|
      t.integer :posted_by_id, :limit => 8
      t.references :job_type
      t.references :company
      t.string :is_company_name_hidden, :limit => 1
      t.date :created_date
      t.text :job_description, :limit => 500
      t.references :job_location
      t.string :is_active, :limit => 1
      t.timestamps
    end
  end
end
