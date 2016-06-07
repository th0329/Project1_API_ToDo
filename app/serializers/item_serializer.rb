class ItemSerializer < ActiveModel::Serializer

  attributes :id, :body, :created_at

#Delegate the practical definition of "name" to the User model, where it belongs,
#rather than redefining it here.

  def created_at

    object.created_at.strftime('%B %d, %Y')

  end

end
