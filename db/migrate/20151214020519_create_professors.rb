class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.string :confirmar_senha

      t.timestamps null: false
    end
  end
end
