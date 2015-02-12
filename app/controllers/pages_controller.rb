class PagesController < ApplicationController
  def index
    if logged_in?
        @user = current_user
        @entries = @user.entries.paginate(page: params[:page])
        @entry = current_user.entries.build
    end
  end
end
