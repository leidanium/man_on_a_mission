class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  has_many :experiences  
  
  def full_name
    "#{first_name&.capitalize} #{name.present? ? name[0].capitalize : ''}"
  end
end
