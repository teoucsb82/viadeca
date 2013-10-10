class AddPaymentToRolls < ActiveRecord::Migration
  def change
    add_column :rolls, :rent_payment_method_1814_5, :string
  end
end
