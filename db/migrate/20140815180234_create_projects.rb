class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.column :name, :varchar
      t.column :current, :boolean, default: false
      t.column :employee_id, :int
    end
  end
end
