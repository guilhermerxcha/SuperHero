class AddNameDescriptionPowerBasePowerStepLevelToWeapon < ActiveRecord::Migration[6.0]
  def change
    add_column :weapons, :name, :string
    add_column :weapons, :description, :text
    add_column :weapons, :power_base, :float
    add_column :weapons, :power_step, :float
    add_column :weapons, :level, :integer
  end
end
