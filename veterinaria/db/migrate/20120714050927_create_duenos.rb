class CreateDuenos < ActiveRecord::Migration
  def change
    create_table :duenos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
