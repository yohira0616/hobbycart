module Api
  class CommentsController < ::ApplicationController
    before_action :require_login

    def create
      binding.pry
      Comment.create!(
        user: current_user,
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
