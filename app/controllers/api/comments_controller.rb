module Api
  class CommentsController < ::ApplicationController
    before_action :require_login, only: %i(create destroy)

    def index
      comments = Comment.where(item_id: params[:item_id])
      comment_object = comments.map do |comment|
        avatar_path = if comment.user.avatar.attached?
                       url_for(comment.user.avatar)
                     else
                       ''
                     end
        {
          avatarAttached: comment.user.avatar.attached?,
          avatarPath: avatar_path,
          screenName: comment.user.screen_name,
          body: comment.body,
          createdAt: comment.created_at
        }
      end
      render json: {comments: comment_object}, status: 200
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
