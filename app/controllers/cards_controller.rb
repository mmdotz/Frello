class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new
  end

  def create
    @card = Card.new(card_params)

  end

  def edit
  end

  def update
  end

  def destroy
    @card.destroy

    respond_to do |format|
      format.html { redirect_to @board, notice: "Card was deleted." }
    end
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit()
  end

end
