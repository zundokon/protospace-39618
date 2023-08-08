class PrototypesController < ApplicationController
  def index
  end

  def prototype_params
    params.require(:prototype).permit(:name, :image, :text).merge(user_id: current_user.id)
  end
end
