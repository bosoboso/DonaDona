class CreateCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :careers do |t|
      t.integer :employee_id
      t.date :from
      t.date :to
      t.text :project
      t.string :position
      t.text :language
      t.string :os
      t.text :tools
      t.boolean :management
      t.boolean :requirement_definition
      t.boolean :base_design
      t.boolean :function_design
      t.boolean :details_design
      t.boolean :db_design
      t.boolean :coding
      t.boolean :integration_test
      t.boolean :system_test
      t.boolean :maintainance
      t.boolean :others

      t.timestamps
    end
  end
end
