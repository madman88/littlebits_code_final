class AddMaterials < ActiveRecord::Migration[5.0]
  def change
    change_table :posts do |t|
      t.string :materials
    end
  end
end
