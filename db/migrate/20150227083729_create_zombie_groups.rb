class CreateZombieGroups < ActiveRecord::Migration
  def change
    create_table :zombie_groups do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :title

      t.timestamps
    end
  end
end
