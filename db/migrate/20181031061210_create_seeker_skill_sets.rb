class CreateSeekerSkillSets < ActiveRecord::Migration[5.1]
  def change
    create_table :seeker_skill_sets do |t|
      t.references :user_account
      t.references :skill_set
      t.integer    :skill_level
      t.timestamps
    end
  end
end
