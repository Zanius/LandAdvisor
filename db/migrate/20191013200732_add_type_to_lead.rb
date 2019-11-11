class AddTypeToLead < ActiveRecord::Migration[6.0]
  def change
    add_column :leads, :type, :string, null: false, default: "SellLead"
  end
end
