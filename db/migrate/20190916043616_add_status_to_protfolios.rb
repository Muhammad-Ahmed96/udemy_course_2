class AddStatusToProtfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :protfolios, :status, :integer, default: 0
  end
end
