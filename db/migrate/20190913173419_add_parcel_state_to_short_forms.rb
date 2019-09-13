class AddParcelStateToShortForms < ActiveRecord::Migration[6.0]
  def change
    add_column :short_forms, :parcel_state, :string
  end
end
