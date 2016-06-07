class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :item_id, :created_at

  #Delegate the practical definition of "name" to the User model, where it belongs,
  #rather than redefining it here.

  def created_at

    object.created_at.strftime('%B %d, %Y')

  end

end
