class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :update, :edit, :destroy]

  def index
    @boards = Board.all
  end

  def show
  end

  def new
    @board = Board.new
  end

  def edit
  end

  def create
    @board = Board.new(board_params)
  end

  private
  def set_board
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:top_hun_us, :top_hun_euro, :top_fif_eng)
  end

end
