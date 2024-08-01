class ApplicationController < ActionController::Base
  before_action :set_search
  before_action :record_page_view

  def set_search
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  def record_page_view
    ActiveAnalytics.record_request(request)
  end
end
