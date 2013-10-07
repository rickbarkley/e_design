class PagesController < ApplicationController
  def home
    
    @q = Plan.search(params[:q])
    @plans = @q.result(distinct: true)
  end

  def about
  end

  def contact
  end
end
