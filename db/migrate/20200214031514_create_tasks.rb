class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :note
      t.date :completed
      t.string :prioritas
      t.string :status

      t.timestamps
    end
  end
end
