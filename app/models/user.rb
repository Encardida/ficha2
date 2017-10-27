class User < ApplicationRecord
  rolify

  enum role: [:teacher, :appraiser, :admin, :secretary]

  has_many :ficha
  has_many :wishes
  has_many :options, through: :wishes
  has_many :availabilities

  validates :name, presence: true
  validates :role, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  def reset
    email = "ficha2.mat@gmail.com"
    super.send_reset_password_instructions
  end

  def has_any_role? (roles)
    roles.each do |role|
      if self.has_role? role
          return true
      end
    end
  end

  def checked_roles
    self.roles.collect do |role|
      role.id
    end
  end

  def roles_names
    self.roles.collect do |role|
      Role::ROLES[role.name.to_sym]
    end
  end
end
