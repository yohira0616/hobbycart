module Api
  class CommentsController < ::ApplicationController
    # TODO: ログイン判定

    def create
      render json: {}, status: 200
    end

    def destroy
      render json: {}, status: 200
    end

    private

    def create_params

    end
  end
end
