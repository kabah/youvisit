class Role < ActiveRecord::Base

  ROLES = %w(
  admin driver passenger
  )

  has_many :user_roles
  has_many :users, through: :user_roles

  scope :admin,     -> { where(name: :admin)}
  scope :driver,    -> { where(name: :driver)}
  scope :passenger, -> { where(name: :passenger)}
end
