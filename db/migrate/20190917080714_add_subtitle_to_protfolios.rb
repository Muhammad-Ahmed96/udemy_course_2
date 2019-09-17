class AddSubtitleToProtfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :protfolios, :subtitle, :string
  end
end
