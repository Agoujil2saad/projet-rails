class CreateUtlisateurs < ActiveRecord::Migration
  def change
    create_table :utlisateurs do |t|
      t.string :nom
      t.string :email

      t.timestamps null: false
    end
  end
end
