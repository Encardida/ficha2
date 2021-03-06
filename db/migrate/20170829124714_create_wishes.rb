class CreateWishes < ActiveRecord::Migration[5.0]
  def change
    create_table :wishes do |t|
      t.references :option, foreign_key: true
      t.references :user, foreign_key: true
      t.references :semester, foreign_key: true
      t.integer :priority

      t.timestamps
    end
  end
end
