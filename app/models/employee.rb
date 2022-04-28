class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_one :employee_detail

has_one :address
has_many :attendances
has_many :employee_leaves
#has_many :leaves, :through=> :employee_leaves
has_one :designation, :through=> :employee_detail
#has_many :employee_projects
#has_many :projects, :through=> :employee_projects
belongs_to:role
has_and_belongs_to_many :projects
end
