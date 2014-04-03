class CoursController < ApplicationController
  def index
  end

  def show
  	@profil=Profil.where(id: params[:path])
    render :layout => false
  end
end
