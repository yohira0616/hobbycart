module Api
  class CommentsController < ::ApplicationController
    before_action :require_login, only: %i(create destroy)

    def index
      comments = Comment.where(item_id: params[:item_id])
      render json: {comments: comments}, status: 200
    end

    def create
      Comment.create!(
        user: current_user,
        item: Item.find(params[:item_id]),
        body: create_params[:body]
      )
      render json: {}, status: 200
    end

    def destroy
      Comment.destroy!(params[:id])
      render json: {}, status: 200
    end

    private

    def create_params
      params.require(:comment).permit(:body)
    end
  end
end
