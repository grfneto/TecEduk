class CreateApoioEducacioanls < ActiveRecord::Migration
  def change
    create_table :apoio_educacioanls do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.string :confirmar_senha

      t.timestamps null: false
    end
  end
end
