class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :organization, :title, :email, :password, :password_confirmation, :remember_me
  
  has_many :hypotheses
  has_many :evidences
  
  validates :first_name, :last_name, :organization, :title, :presence => true
  
  acts_as_voter
  
  ROLES = %w[admin moderator basic banned]
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
