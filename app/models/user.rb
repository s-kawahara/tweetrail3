class User < ApplicationRecord
  has_many :tweets, dependent: :destroy
  has_many :likes
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #usernameを必須・一意とする
  validates_uniqueness_of :username
  validates_presence_of :username

  #ログイン時にemailを不要とする
  def email_required?
    false
  end
  def email_changed?
    false
  end


  def following?(other_user)
    relationships.find_by(following_id: other_user.id)
  end

  def follow!(other_user)
    relationships.create!(following_id: other_user.id)
  end

  def unfollow!(other_user)
    relatinoships.find_by(following_id: other_user.id).destroy
  end

end
