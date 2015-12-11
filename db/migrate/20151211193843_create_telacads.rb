class CreateTelacads < ActiveRecord::Migration
  def change
    create_table :telacads do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
