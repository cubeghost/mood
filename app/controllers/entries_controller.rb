class EntriesController < ApplicationController
  
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @entry = current_user.entries.build(entries_params)
    if @entry.save
      flash[:success] = "entry saved!"
      redirect_to root_url
    else
      render 'pages/index'
    end
  end

  def destroy
  end

  private

    def entries_params
      params.require(:entry).permit(:content)
    end
end
