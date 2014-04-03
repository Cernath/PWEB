class ProfiltotalsController < ApplicationController
  def index
  	@profiltotal=User.all
  end

  def show
  	@profiltotal=User.where(id: params[:path])
  	render :layout => false
  end
end
