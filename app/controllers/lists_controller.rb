class ListsController < ApplicationController
  def new #投稿フォーム
   @list = List.new
  end

 def create #投稿フォーム

   list = List.new(list_params)

   list.save

   redirect_to list_path(list.id)
 end

  def index #一覧画面
    @lists = List.all
  end

  def show #詳細画面
    @list = List.find(params[:id])
  end

  def edit #編集フォーム
    @list = List.find(params[:id])
  end

  def update #更新
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end

  private

  def list_params
    params.require(:list).permit(:title, :body, :image)
  end

end
