class CreateJobPostSkillSets < ActiveRecord::Migration[5.1]
  def change
    create_table :job_post_skill_sets do |t|
      t.references :skill_set
      t.references :job_post
      t.integer    :skill_level
      t.timestamps
    end
  end
end
