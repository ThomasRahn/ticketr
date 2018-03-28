class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :task
      t.text :description
      t.boolean :is_completed, default: 0
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
