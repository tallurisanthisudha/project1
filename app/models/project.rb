class Project < ApplicationRecord
    has_many: employees
    belongs_to: lead, class_name: "Employee", foreign_key: "project_lead_id"
end
