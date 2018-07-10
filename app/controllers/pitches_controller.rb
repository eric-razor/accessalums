class PitchesController < ApplicationController
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
      @pitch = Pitch.new
    end

  end


end
