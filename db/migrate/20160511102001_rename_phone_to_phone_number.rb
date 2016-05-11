class RenamePhoneToPhoneNumber < ActiveRecord::Migration
  def change
    rename_column :restaurants, :phone, :phone_number
  end
end
