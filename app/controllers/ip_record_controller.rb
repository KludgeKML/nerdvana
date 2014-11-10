class IpRecordController < ApplicationController
  def get_ip
    @ip_address = IPRecord.first()
  end

  def set_ip
    redirect_to(action: :get_ip) unless params[:key] == ENV['SET_KEY']
    @ip_address = IPRecord.first()
    @ip_address.address = request.remote_ip.to_s
    @ip_address.save!
    redirect_to(action: :get_ip)
  end
end
