class Match < ApplicationRecord
  belongs_to :winner, class_name: "Player"
  belongs_to :loser,  class_name: "Player"

  validate :different_players

  after_create :update_player_stats

  private

  def different_players
    errors.add(:base, "Winner and loser must be different players") if winner_id == loser_id
  end

  def update_player_stats
    winner.increment!(:wins)
    loser.increment!(:losses)
  end
end