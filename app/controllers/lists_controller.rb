class ListsController < ApplicationController
  def new #投稿フォーム
   @list = List.new
  end

 def create #投稿フォーム

   list.save

   redirect_to list_path(list.id)
 end

  def index #一覧画面
    @lists = List.all
  end

  def show #詳細画面
    @list = List.find(params[:id])
  end

  def edit
  end

  private

  def list_params
    params.require(:list).permit(:title, :body)
  end

end
