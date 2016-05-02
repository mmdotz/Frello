class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :create, :destroy]

  def index
    @boards = current_user.boards
  end

  def new
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
  end

  def create
    @board = Board.new(board_params)
    respond_to do |format|
      if @board.save
        format.html { redirect_to board_path(@board), notice: 'You created a new Frello Board!' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
  end

  private

  def set_board
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:name, :setting, :category)
  end
end
