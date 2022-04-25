class EmployeeDetail < ApplicationRecord
    belongs_to :employee
    belongs_to :project
    belongs_to :designation
end
