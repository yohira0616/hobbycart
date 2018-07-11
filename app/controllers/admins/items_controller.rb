module Admins
  class ItemsController < AdminBaseController
    before_action :set_item, only: %i[show edit update destroy]

    # GET /items
    # GET /items.json
    def index
      @q = Item.ransack(params[:q])
      @items = @q.result.page(params[:page])
    end

    # GET /items/1
    # GET /items/1.json
    def show;
    end

    # GET /items/new
    def new
      @item = Item.new
    end

    # GET /items/1/edit
    def edit;
    end

    # POST /items
    # POST /items.json
    def create
      @item = Item.new(item_params)
      @item.thumbnail.attach(item_params[:thumbnail]) if item_params[:thumbnail].present?

      respond_to do |format|
        if @item.save
          flash[:success] = '商品が追加されました'
          format.html {redirect_to admins_item_path(@item)}
          format.json {render :show, status: :created, location: @item}
        else
          format.html {render :new}
          format.json {render json: @item.errors, status: :unprocessable_entity}
        end
      end
    end

    # PATCH/PUT /items/1
    # PATCH/PUT /items/1.json
    def update
      respond_to do |format|
        if @item.update(item_params)
          format.html {redirect_to admins_item_path(@item), notice: 'Item was successfully updated.'}
          format.json {render :show, status: :ok, location: @item}
        else
          format.html {render :edit}
          format.json {render json: @item.errors, status: :unprocessable_entity}
        end
      end
    end

    # DELETE /items/1
    # DELETE /items/1.json
    def destroy
      binding.pry
      #@item.destroy
      respond_to do |format|
        format.html {redirect_to admins_items_path, notice: 'Item was successfully destroyed.'}
        format.json {head :no_content}
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :description, :price, :status, :thumbnail)
    end
  end
end
