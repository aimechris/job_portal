require 'rails_helper'

RSpec.describe CompanyImage, type: :model do
  it { should belong_to (:company) }
end
