class CreateVendaProduto < ActiveRecord::Migration
  def up
    create_table :produtos_vendas, :id => false do |t|
    t.references :produto, :venda   
    end 
  end

  def down
  end
end
