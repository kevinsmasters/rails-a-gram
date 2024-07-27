class ApplicationController < ActionController::Base
  before_action :set_search

  def set_search
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end
end
