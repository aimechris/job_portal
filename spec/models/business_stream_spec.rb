require 'rails_helper'

RSpec.describe BusinessStream, type: :model do
  # Association Test
  it { should have_many (:companies)}
  # Validation Test
  it { should validate_presence_of (:business_stream_name) }
end
