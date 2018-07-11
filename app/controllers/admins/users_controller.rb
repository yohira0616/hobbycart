module Admins
  class UsersController < AdminBaseController

    def index
      @q = User.ransack(params[:q])
      @users= @q.result.page(params[:page])
    end

    def show; end

    def new; end

    def edit; end

    def create; end

    def update; end

    def destroy; end

  end
end
