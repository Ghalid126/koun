class AddLastNameToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :last_name, :string
  end
end
