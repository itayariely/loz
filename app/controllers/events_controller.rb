class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    if params['start'] && params['end']
      @events = @events.between(params['start'], params['end'])
    end
     respond_to do |format|
       format.html # index.html.erb
       format.json { render :json => @events }
     end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /events/new
  def new
    @event = Event.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'האירוע נוצר' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'האירוע עודכן' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def approved
    set_event.approval!(set_event)
    redirect_to session.delete(:return_to) || :back, notice: " #{@event.name.to_s} אושר"
  end

  def draft
    set_event.drafting!(set_event)
    redirect_to session.delete(:return_to) || :back, notice: " #{@event.name.to_s} בוטל"
  end

  def data
    calendars = Calendar.all
    events = Event.all
    render :json => events.map {|event| {
           :id => event.id,
           :start_date => event.start_at.to_formatted_s(:db),
           :end_date => event.end_at.to_formatted_s(:db),
           :text => event.name,
           :section_id => event.section,
           :color => event.color

       }
     }
       #events.room_id
  end

  def db_action
    mode = params["!nativeeditor_status"]
    id = params["id"]
    start_at = params["start_date"]
    end_at = params["end_date"]
    name = params["text"]
    calendar_id = params["section_id"]
    event_pid = params["id"]
    parent_id = params["parent_id"]

 case mode
   when "inserted"
    #  event = Event.create :start_at => start_at, :end_at => end_at, :name => name, :calendar_id => calendar_id, :parent_id => parent_id
    event = Event.new
    event.start_at = start_at
    event.end_at = end_at
    event.name = name
    event.calendar_id = calendar_id
    event.parent_id = parent_id if parent_id.present?
    event.save!
    tid = event.id

   when "deleted"
     Event.find(id).destroy
     tid = id

   when "updated"
     event = Event.find(id)
     event.start_at = start_at
     event.end_at = end_at
     event.name = name
     event.calendar_id = calendar_id
     event.parent_id = parent_id if parent_id.present?
     event.save
     tid = id
 end
 #
 # render :json => {:action => {
 #            :type => mode,
 #            :sid => id.to_i,
 #            :tid => tid.to_i,
 #        }}
 @mode = mode
 @id = id
 @tid = id
 request.format = "xml"
 respond_to do |format|
   format.xml {render :layout => false}
 end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :start_at, :end_at, :note, :days, :nights, :place, :status, :color, :all_day, :description, :time, :mosa, :calendar_id, :parent_id, :circul_ids => [], :friend_ids => [])
    end
end
