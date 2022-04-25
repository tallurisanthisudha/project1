class Employee < ApplicationRecord
    has_one :employee_detail
    has_many :addresses
    has_many :attendances
    has_many :employee_leave
    has_many :leaves, :through=> :employee_leaves
    has_one :designation, :through=> :employee_detail

end
