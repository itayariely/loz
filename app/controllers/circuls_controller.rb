class CirculsController < ApplicationController
  before_action :set_circul, only: [:show, :edit, :update, :destroy]

  # GET /circuls
  # GET /circuls.json
  def index
    @circuls = Circul.where(father_circul_id: [0, nil]).order(:name)
    # @circuls = Circul.where("father_circul_id IN ('0','') OR father_circul_id IS NULL")
  end

  # GET /circuls/1
  # GET /circuls/1.json
  def show
    @friends = Friend.all
  end

  # GET /circuls/new
  def new
    @circul = Circul.new
  end

  # GET /circuls/1/edit
  def edit
  end

  # POST /circuls
  # POST /circuls.json
  def create
    @circul = Circul.new(circul_params)

    respond_to do |format|
      if @circul.save
        format.html { redirect_to @circul, notice: 'Circul was successfully created.' }
        format.json { render :show, status: :created, location: @circul }
      else
        format.html { render :new }
        format.json { render json: @circul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /circuls/1
  # PATCH/PUT /circuls/1.json
  def update
    respond_to do |format|
      if @circul.update(circul_params)
        format.html { redirect_to @circul, notice: 'Circul was successfully updated.' }
        format.json { render :show, status: :ok, location: @circul }
      else
        format.html { render :edit }
        format.json { render json: @circul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circuls/1
  # DELETE /circuls/1.json
  def destroy
    @circul.destroy
    respond_to do |format|
      format.html { redirect_to circuls_url, notice: 'Circul was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circul
      @circul = Circul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def circul_params
      params.require(:circul).permit(:name, :father_circul_id, :friend_ids => [])
    end
end
