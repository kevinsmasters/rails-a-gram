class ProfilesController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  # def users
  #   query = User.ransack(username_cont: search_query)
  #   @users = query.result(distinct: true)
  # end

  # def search_query
  #   params[:query]
  # end
end
