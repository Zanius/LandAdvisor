class CreateShortForms < ActiveRecord::Migration[6.0]
  def change
    create_table :short_forms do |t|
      t.string :name
      t.string :phone
      t.string :parcel_street
      t.string :parcel_street2
      t.string :parcel_city
      t.string :parcel_zip
      t.string :parcel_county

      t.timestamps
    end
  end
end
