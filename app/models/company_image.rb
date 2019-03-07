class CompanyImage < ApplicationRecord
  belongs_to :company
  # company image
  has_attached_file :company_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :user_image, content_type: /\Aimage\/.*\z/

end
