class PagesController < ApplicationController
  def index
    if logged_in?
        @user = current_user
        @entries = @user.entries.paginate(page: params[:page])
    end
  end
end
