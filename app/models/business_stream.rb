class BusinessStream < ApplicationRecord
  has_many :companies
  validates_presence_of :business_stream_name
end
