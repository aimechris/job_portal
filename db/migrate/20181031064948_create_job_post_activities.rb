class CreateJobPostActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :job_post_activities do |t|
      t.references :user_account
      t.references :job_post
      t.date       :apply_date
      t.timestamps
    end
  end
end
