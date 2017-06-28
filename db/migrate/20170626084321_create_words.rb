class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.boolean :leaned_state
      t.integer :level
      t.integer :answer
      t.references :categories, foreign_key: true
      t.timestamps
    end
  end
end
