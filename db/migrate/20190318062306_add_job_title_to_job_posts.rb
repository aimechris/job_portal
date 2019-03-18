class AddJobTitleToJobPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :job_posts, :job_title, :string
  end
end
