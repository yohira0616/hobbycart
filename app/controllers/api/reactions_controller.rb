module Api
  class ReactionsController < ::ApplicationController
    before_action :require_login

    def create
      item = Item.publish.find(create_params[:item_id])
      # 重複登録しようとしたとき
      if item.fetch_reaction_id(current_user).present?
        return render json: {
          error: "すでにいいねされています"
        }, status: 400
      end
      Reaction.good_to_item!(item, current_user)
      render json: {}, status: 200
    end

    def destroy
      Reaction.find(params[:id]).destroy!
      render json: {}, status: 200
    end

    private

    def create_params
      params.permit(:item_id)
    end
  end
end
