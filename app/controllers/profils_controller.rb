class ProfilsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index search show ]
  before_action :set_profil, only: %i[ show]

  def index
    @mans = User.all
  end

  def search
  end

  def show

  end

  def edit
  end

  def update
    byebug

    current_user.update(profils_parms)

    # TODO Destroy all related skills 
    manage_skills_update

    redirect_to root_path
  end

  private 

  def set_profil
    @profil = User.find(params[:id])
  end

  def profils_parms
    params.require(:user).permit(:name, :first_name, :price, :lang, :nationality)
  end

  def manage_skills_update
    skills = params["user"]["skills"]
    skills = skills.split(",")

    skills.each do |skill|
      current_skill = Skill.find_or_create_by(name: skill.strip)

      current_user.skills << current_skill
    end

    current_user.save
  end
end
