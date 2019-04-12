class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :username, :role

  def role
    player = GamePlayer.find(object.id)
    player.role
  end
end
