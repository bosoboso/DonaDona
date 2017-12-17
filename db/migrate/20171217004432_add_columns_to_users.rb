class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :department, :string
    add_column :users, :employee_id, :integer
    add_column :users, :username, :string
  end
end
