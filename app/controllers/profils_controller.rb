class ProfilsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index search show ]
  before_action :set_profil, only: %i[ show]

  def index
    @profils = User.all
  end

  def search
  end

  def show

  end

  def edit
  end

  def update
    current_user.update_attributes(profils_parms)
    redirect_to root_path
  end

  private 

  def set_profil
    @profil = User.find(params[:id])
  end

  def profils_parms
    params.require(:user).permit(:name, :first_name, :price, :lang, :nationality)
  end
end
