class CreateSkillSets < ActiveRecord::Migration[5.1]
  def change
    create_table :skill_sets do |t|
      t.string :skill_set_name, :limit => 50
      t.timestamps
    end
  end
end
