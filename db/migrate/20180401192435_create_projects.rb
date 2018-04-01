class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :code
      t.string :name
      t.string :description
      t.belongs_to :user, index: true
      t.timestamps
    end

    add_index :projects, :code, unique: true 
  end
end
