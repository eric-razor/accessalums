class PitchesController < ApplicationController
  # before_action :authorized

  #
  # create_table "pitches", force: :cascade do |t|
  #   t.string "title"
  #   t.text "content"
  #   t.integer "student_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end
    def index
      @pitches = Pitch.all
    end

    def show
      @pitch = Pitch.find(params[:id])
    end

    def edit
      #@pitch = Pitch.find(params[:id])

    end

    def update

    end

    def new
      @pitch = Pitch.new
    end

    def create
      @pitch = Pitch.new(pitch_params)
      @pitch.student_id = session[:student_id] #finding the session that belongs to the pitch
      if @pitch.valid?
        @pitch.save
        redirect_to @pitch
      else
        render :new
      end




      #
      # if (@pitch[:title] ||  @pitch[:content]) == nil
      #   redirect :new
      # else
      #   @pitch.save
      #   render :index
      # end
    end

    def pitch_params
      params.require(:pitch).permit(:title, :content)
    end

end
