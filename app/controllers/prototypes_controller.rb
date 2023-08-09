class PrototypesController < ApplicationController
  def index
  end

  def new
    @prototype = Prototype.new
  end

  def prototype_params
    params.require(:prototype).permit(:name, :image, :text).merge(user_id: current_user.id)
  end
end
