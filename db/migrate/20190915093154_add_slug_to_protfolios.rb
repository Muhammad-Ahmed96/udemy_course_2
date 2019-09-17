class AddSlugToProtfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :protfolios, :slug, :string
    add_index :protfolios, :slug, unique: true
  end
end
