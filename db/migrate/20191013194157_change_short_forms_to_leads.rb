class ChangeShortFormsToLeads < ActiveRecord::Migration[6.0]
  def change
    rename_table :short_forms, :leads
  end
end
