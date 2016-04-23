class BoardController < ApplicationController
  before_action :set_board, only: [:edit, :update, :destroy]

  def index
    @boards = current_user.boards
  end

  def new
  end

  def edit
  end

  def create
    @board = Board.new(board_params)

    respond_to do |format|
      if @board.save
        format.html { redirect_to @boards, notice: 'Your new board creation was successful.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
  end

  private

  def board_params
    params.require(:board).permit(:name, :setting, :category)
  end

end
