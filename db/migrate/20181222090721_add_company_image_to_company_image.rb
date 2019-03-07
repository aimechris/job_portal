class AddCompanyImageToCompanyImage < ActiveRecord::Migration[5.1]
  def change
    add_attachment :company_images, :company_image
  end
end
