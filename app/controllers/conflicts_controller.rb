class ConflictsController < ApplicationController
  def index
    @conflicts = Conflict.all
    respond_to do |format|
      format.json #{render :layout => false}
    end
  end

  def show
  end


end
