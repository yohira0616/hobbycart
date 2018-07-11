module Api
  class CommentsController < ::ApplicationController
    # TODO: ログイン判定

    def create
      render json: {}, status: 200
    end

    def destroy

    end

    private

    def create_params

    end
  end
end
