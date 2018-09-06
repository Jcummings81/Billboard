class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :update, :edit, :destroy]

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def edit
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to artist_songs_path
    else
      render :new
    end
  end
  
  def destroy
    @artist.destroy
    redirect_to board_songs_path
  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
