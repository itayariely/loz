class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :edit, :update, :destroy]

  def index
    @weeks = Week.all
  end

  def show
  end

  def new
    @week = Week.new
  end

  def edit
  end

  def create
    @week = Week.new(week_params)

    respond_to do |format|
      if @week.save
        format.html { redirect_to @week, notice: 'האירוע נוצר.' }
        format.json { render :show, status: :created, location: @week }
      else
        format.html { render :new }
        format.json { render json: @week.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @week.update(week_params)
        format.html { redirect_to @week, notice: 'האירוע עודכן.' }
        format.json { render :show, status: :ok, location: @week }
      else
        format.html { render :edit }
        format.json { render json: @week.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @week.destroy
    respond_to do |format|
      format.html { redirect_to weeks_url, notice: 'האירוע נמחק.' }
      format.json { head :no_content }
    end
  end

  private
    def set_week
      @week = Week.find(params[:id])
    end

    def week_params
      params.require(:week).permit(:name, :frequency, :houers, :tomezon, :week_day_ids => [])
    end
end
