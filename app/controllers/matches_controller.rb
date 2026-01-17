class MatchesController < ApplicationController
  def new
    @players = Player.all
  end

  def create
    match = Match.new(match_params)

    if match.save
      redirect_to leaderboard_path, notice: "Match recorded"
    else
      redirect_to new_match_path, alert: match.errors.full_messages.join(", ")
    end
  end

  private

  def match_params
    params.require(:match).permit(:winner_id, :loser_id)
  end
end