class Api::ItemsController < ApiController

  before_action :authenticated?

  def create

    item = Item.new(item_params)
    if item.save
      render json: item
    else
      rendor json: {errors: item.errors.full_messages}, status: :unprocessable_entity
    end

  end

private

def item_params

  params.require(:item).permit(:body)

end

end
