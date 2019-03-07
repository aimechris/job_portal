class BusinessStreamsController < ApplicationController
  def new
    @business_stream = BusinessStream.new
  end
  def create
    @business_stream = BusinessStream.new(business_stream_params)
  end
  def update
  end
  def show
  end
  def delete
  end
  private
    def business_stream_params
      params.require(:business_stream).permit(:)
    end
end
