class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def create
    player = Player.new(player_params)
    if player.save
      redirect_to players_path, notice: "Player added"
    else
      redirect_to players_path, alert: player.errors.full_messages.join(", ")
    end
  end

  def destroy
    player = Player.find(params[:id])
    player.destroy
    redirect_to players_path, notice: "Player removed"
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end
end
