class ProfilsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_profil, only: %i[ show ]

  def index
    @profils = User.all
  end

  def search
  end

  def show
  end

  private 

  def set_profil
    @profil = User.find(params[:id])
  end
end
