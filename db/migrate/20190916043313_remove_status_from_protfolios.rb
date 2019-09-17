class RemoveStatusFromProtfolios < ActiveRecord::Migration[5.2]
  def change
    remove_column :protfolios, :status
  end
end
