module Admins

  class ItemPurchaseLogsController < ApplicationController
    before_action :set_item_purchase_log, only: [:show, :edit, :update, :destroy]

    # GET /item_purchase_logs
    # GET /item_purchase_logs.json
    def index
      @item_purchase_logs = ItemPurchaseLog.all
    end

    # GET /item_purchase_logs/1
    # GET /item_purchase_logs/1.json
    def show
    end

    # GET /item_purchase_logs/new
    def new
      @item_purchase_log = ItemPurchaseLog.new
    end

    # GET /item_purchase_logs/1/edit
    def edit
    end

    # POST /item_purchase_logs
    # POST /item_purchase_logs.json
    def create
      @item_purchase_log = ItemPurchaseLog.new(item_purchase_log_params)

      respond_to do |format|
        if @item_purchase_log.save
          format.html {redirect_to @item_purchase_log, notice: 'Item purchase log was successfully created.'}
          format.json {render :show, status: :created, location: @item_purchase_log}
        else
          format.html {render :new}
          format.json {render json: @item_purchase_log.errors, status: :unprocessable_entity}
        end
      end
    end

    # PATCH/PUT /item_purchase_logs/1
    # PATCH/PUT /item_purchase_logs/1.json
    def update
      respond_to do |format|
        if @item_purchase_log.update(item_purchase_log_params)
          format.html {redirect_to @item_purchase_log, notice: 'Item purchase log was successfully updated.'}
          format.json {render :show, status: :ok, location: @item_purchase_log}
        else
          format.html {render :edit}
          format.json {render json: @item_purchase_log.errors, status: :unprocessable_entity}
        end
      end
    end

    # DELETE /item_purchase_logs/1
    # DELETE /item_purchase_logs/1.json
    def destroy
      @item_purchase_log.destroy
      respond_to do |format|
        format.html {redirect_to item_purchase_logs_url, notice: 'Item purchase log was successfully destroyed.'}
        format.json {head :no_content}
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_item_purchase_log
      @item_purchase_log = ItemPurchaseLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_purchase_log_params
      params.fetch(:item_purchase_log, {})
    end
  end
end
