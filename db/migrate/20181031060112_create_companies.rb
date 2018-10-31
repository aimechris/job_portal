class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :company_name, :limit => 100
      t.string :profile_description, :limit => 1000
      t.references :business_stream
      t.date :establishment_date
      t.string :company_website_url, :limit => 500
      t.timestamps
    end
  end
end
