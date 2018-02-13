class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :task
      t.text :description

      t.timestamps
    end
  end
end
