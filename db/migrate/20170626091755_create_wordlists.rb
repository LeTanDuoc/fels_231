class CreateWordlists < ActiveRecord::Migration[5.1]
  def change
    create_table :wordlists do |t|
      t.string :name
      t.string :wordlist_learned
      t.string :wordlist_unlearned
      t.references :categories, foreign_key: true
      t.timestamps
    end
  end
end
