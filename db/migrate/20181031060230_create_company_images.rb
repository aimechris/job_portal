class CreateCompanyImages < ActiveRecord::Migration[5.1]
  def change
    create_table :company_images do |t|
      t.references :company
      t.timestamps
    end
  end
end
