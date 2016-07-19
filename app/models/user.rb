class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :trackable, :validatable

  has_many :roles, through: :user_roles
  has_many :user_roles, dependent: :destroy
  has_many :places
  has_many :trips, through: :tickets
  has_many :tickets

  def has_a_role?
    roles.present? || user_roles.present?
  end

  def has_role?(role)
    role_id = Role.where(name: role).map(&:id)
    self.user_roles.detect{|user_role| role_id.include?(user_role.role_id)} || self.roles.detect{|role| role_id.include?(role.id)}
  end

  def add_role(role_name)
    unless self.has_role?(role_name)
      role = Role.where(name: role_name)
      self.user_roles.build(role_id: role[0].id)
      self.user_roles[self.user_roles.length - 1].save 
    end
  end

  def destroy_role(*role_names)
    UserRole.where(user_id: self.id, role_id: Role.where(name: role_names)).destroy_all
  end

  def places
    Place.where(admin_id: self.id)
  end

  def add_place(place_id)
    place = Place.find(place_id)
    place.admin_id = self.id
    place.save
  end

end
