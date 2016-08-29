class CreatePacientis < ActiveRecord::Migration[5.0]
  def change
    create_table :pacientis do |t|
      t.string :nume
      t.string :prenume
      t.integer :varsta
      t.text :stare

      t.timestamps
    end
  end
end
