# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120215211611) do

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "rg"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "tel"
    t.string   "cel"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", :force => true do |t|
    t.string   "nome"
    t.string   "rg"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "tel"
    t.string   "cel"
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", :force => true do |t|
    t.string   "descricao"
    t.float    "preco"
    t.integer  "quantidade_estoque"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos_vendas", :id => false, :force => true do |t|
    t.integer "produto_id"
    t.integer "venda_id"
  end

  create_table "vendas", :force => true do |t|
    t.integer  "Funcionario_id"
    t.integer  "Cliente_id"
    t.integer  "desconto"
    t.float    "preco_total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vendas", ["Cliente_id"], :name => "index_vendas_on_Cliente_id"
  add_index "vendas", ["Funcionario_id"], :name => "index_vendas_on_Funcionario_id"

end
