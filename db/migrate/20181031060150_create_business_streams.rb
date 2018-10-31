class CreateBusinessStreams < ActiveRecord::Migration[5.1]
  def change
    create_table :business_streams do |t|
      t.string :business_stream_name, :limit => 100
      t.timestamps
    end
  end
end
