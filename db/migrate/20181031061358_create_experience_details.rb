class CreateExperienceDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :experience_details do |t|

      t.timestamps
    end
  end
end
