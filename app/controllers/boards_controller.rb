class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update, :destroy]

  def index
    @boards = current_user.boards
  end

  def new
    @board = Board.new
    @user = current_user
  end

  def show
    @board = Board.find(params[:id])
    @cards = @board.cards
  end

  def edit
  end

  def create
    @board = Board.new(board_params)
    respond_to do |format|
      if @board.save
        format.html { redirect_to @board, notice: 'You created a new Frello Board!' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @board.destroy

    respond_to do |format|
    format.html { redirect_to root_path, notice: 'Your board was removed from the list.' }
    end
  end

  private

  def set_board
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:name, :setting, :category, :user_id)
  end
end
