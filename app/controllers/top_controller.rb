class TopController < ApplicationController
  before_action :authenticate_user!
  def index
    @lists = List.where(user: current_user).order("created_at ASC")
  end
end

