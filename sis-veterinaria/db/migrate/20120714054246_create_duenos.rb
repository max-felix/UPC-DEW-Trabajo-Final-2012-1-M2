class CreateDuenos < ActiveRecord::Migration
  def change
    create_table :duenos do |t|
      t.string :nombre
      t.string :email
      t.string :direccion
      t.integer :telefono
      t.integer :celular

      t.timestamps
    end
  end
end
