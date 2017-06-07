class CreateCours < ActiveRecord::Migration
  def change
    create_table :cours do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :cours, [:user_id, :created_at]
  end
end
