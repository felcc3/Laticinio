class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :rg
      t.string :cpf
      t.string :endereco
      t.string :tel
      t.string :cel
      t.string :senha

      t.timestamps
    end
  end
end
