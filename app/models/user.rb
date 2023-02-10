class User < ApplicationRecord
  after_create :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :foods
  has_many :recipes

  validates :name, presence: true

  ROLES = %w[admin default].freeze

  private

  def set_default_role
    self.role = 'admin'
    save
  end
end
