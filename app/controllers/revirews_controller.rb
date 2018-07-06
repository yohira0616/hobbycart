class RevirewsController < ApplicationController
  before_action :set_revirew, only: [:show, :edit, :update, :destroy]

  # GET /revirews
  # GET /revirews.json
  def index
    @revirews = Revirew.all
  end

  # GET /revirews/1
  # GET /revirews/1.json
  def show
  end

  # GET /revirews/new
  def new
    @revirew = Revirew.new
  end

  # GET /revirews/1/edit
  def edit
  end

  # POST /revirews
  # POST /revirews.json
  def create
    @revirew = Revirew.new(revirew_params)

    respond_to do |format|
      if @revirew.save
        format.html { redirect_to @revirew, notice: 'Revirew was successfully created.' }
        format.json { render :show, status: :created, location: @revirew }
      else
        format.html { render :new }
        format.json { render json: @revirew.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /revirews/1
  # PATCH/PUT /revirews/1.json
  def update
    respond_to do |format|
      if @revirew.update(revirew_params)
        format.html { redirect_to @revirew, notice: 'Revirew was successfully updated.' }
        format.json { render :show, status: :ok, location: @revirew }
      else
        format.html { render :edit }
        format.json { render json: @revirew.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revirews/1
  # DELETE /revirews/1.json
  def destroy
    @revirew.destroy
    respond_to do |format|
      format.html { redirect_to revirews_url, notice: 'Revirew was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revirew
      @revirew = Revirew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def revirew_params
      params.fetch(:revirew, {})
    end
end
