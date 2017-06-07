class AddPictureToCours < ActiveRecord::Migration
  def change
    add_column :cours, :picture, :string
  end
end
