class GameSerializer < ActiveModel::Serializer
  attributes :id

  has_many :messages

  # has_many :game_cards
  has_many :cards, through: :game_cards

  # has_many :game_players
  has_many :players, through: :game_players
end
