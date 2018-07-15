module Api
  class ReactionsController < ::ApplicationController
    before_action :require_login

    def create
      item = Item.publish.find(create_params[:item_id])
      Reaction.good_to_item!(item, current_user)
      render json: {}, status: 200
    end

    def destroy
      item = Item.publish.find(create_params[:item_id])
      Reaction.revoke_good_to_item!(item, current_user)
      render json: {}, status: 200
    end

    private

    def create_params
      params.permit(:item_id)
    end
  end
end
