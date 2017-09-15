class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :text
      t.boolean :isComplete
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
