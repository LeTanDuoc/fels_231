class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.integer :Score
      t.string :learned_word
      t.string :int
      t.references :lesson, foreign_key: true
      t.timestamps
    end
  end
end
