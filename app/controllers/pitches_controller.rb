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


    end

    def update

    end

    def new
      @pitch = Pitch.new
    end

    def create
      @pitch = Pitch.new(pitch_params)
      if @pitch.valid?
        @pitch.save
        redirect to @pitch
      else
        render :new
      end
    end

    def pitch_params
      params.require(:pitch).permit(:title, :content, )
    end

    # Finish all this tonight

end
