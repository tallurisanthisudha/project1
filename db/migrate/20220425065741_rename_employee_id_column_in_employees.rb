class RenameEmployeeIdColumnInEmployees < ActiveRecord::Migration[7.0]
  def change
    rename_column :employees, :employee_id, :employee_unique_id
  end
end
