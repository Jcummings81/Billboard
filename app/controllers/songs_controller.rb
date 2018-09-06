class SongsController < ApplicationController
    before_action set_song, only: [:show, :update, :edit, :destroy]
    def index
      @songs = Song.all
    end
  
    def show
    end
  
    def new
      @song = Song.new
    end
  
    def edit
    end
  
    def create
      @song = Song.new(song_params)
    end
  
    private
    def set_song
      @song = Song.find(params[:id])
    end
  
    def song_params
      params.require(:song).permit(:name)
    end
  end
  