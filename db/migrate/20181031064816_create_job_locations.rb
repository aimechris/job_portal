class CreateJobLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :job_locations do |t|
      t.string :street_address, :limit => 100
      t.string :city, :limit => 50
      t.string :state, :limit => 50
      t.string :country, :limit => 50
      t.string :zip, :limit => 50
      t.timestamps
    end
  end
end
