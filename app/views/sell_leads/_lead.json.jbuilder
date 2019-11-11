json.extract! lead, :id, :name, :phone, :parcel_street, :parcel_street2, :parcel_city, :parcel_zip, :parcel_county, :created_at, :updated_at
json.url lead_url(lead, format: :json)
