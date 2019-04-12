class CardSerializer < ActiveModel::Serializer
  attributes :id, :word, :identity

  def identity
    card = GameCard.find_by(card_id: object.id)
    card.identity
  end
end
