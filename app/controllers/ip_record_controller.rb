class IpRecordController < ApplicationController
  protect_from_forgery with: :null_session

  def get_ip
    @ip_address = IpRecord.first
  end

  def set_ip
    if params[:key] == ENV['SET_KEY']
      @ip_address = IpRecord.first_or_create
      @ip_address.address = request.remote_ip.to_s
      @ip_address.save!
    end
    redirect_to(action: :get_ip)
  end
end
