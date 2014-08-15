class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.column :name, :varchar

      t.timestamps
    end
  end
end
