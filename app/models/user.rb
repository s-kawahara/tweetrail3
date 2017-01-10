class User < ApplicationRecord
  has_many :tweets, dependent: :destroy
  has_many :likes
  has_many :following_relationships,foreign_key: :following_id,class_name: Relationship, dependent: :destroy
  has_many :followings, through: :following_relationships
  has_many :follower_relationships, foreign_key: :follower_id,class_name: Relationship , dependent: :destroy
  has_many :followers, through: :follower_relationships

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

  def follow(other_user)
    following_relationships.create(following_id: other_user.id)
  end

  def unfollow(other_user)
    following_relationships.find_by(following_id: other_user.id).destroy
  end

  def following?(other_user)
    following_relationships.find_by(follower_id: other_user.id)
  end

end
