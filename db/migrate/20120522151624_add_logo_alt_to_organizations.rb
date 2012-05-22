class AddLogoAltToOrganizations < ActiveRecord::Migration
  def self.up
    add_column :organizations, :logo_alt, :string
  end

  def self.down
    remove_column :organizations, :logo_alt
  end
end
