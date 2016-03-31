class NerdvanaController < ApplicationController
  def index
  end

  def sofa
    @arm = params[:arm] if params[:arm] == 'left' || params[:arm] == 'right'
  end
end
