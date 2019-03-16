class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
  end

  def create
    @list = List.new(params[:list].permit(:title, :check, :deadline))
    @list.save
    redirect_to :lists
  end
end
