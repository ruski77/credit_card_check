class AddPositionToCreditCards < ActiveRecord::Migration
  def change
    add_column :credit_cards, :position, :integer
  end
end
