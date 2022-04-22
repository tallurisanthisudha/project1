class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :employee_id
      t.string :password
      t.integer:role_id

      t.timestamps
    end
  end
end
