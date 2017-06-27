class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :score
      t.integer :level
      t.boolean :is_correct
      t.integer :progress

      t.timestamps
    end
  end
end
