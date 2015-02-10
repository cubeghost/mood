class PagesController < ApplicationController
  def index
    @user = current_user
    @entries = @user.entries.paginate(page: params[:page])
  end
end
