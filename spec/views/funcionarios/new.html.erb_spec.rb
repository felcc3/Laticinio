require 'spec_helper'

describe "funcionarios/new" do
  before(:each) do
    assign(:funcionario, stub_model(Funcionario,
      :nome => "MyString",
      :rg => "MyString",
      :cpf => "MyString",
      :endereco => "MyString",
      :tel => "MyString",
      :cel => "MyString",
      :senha => "MyString"
    ).as_new_record)
  end

  it "renders new funcionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => funcionarios_path, :method => "post" do
      assert_select "input#funcionario_nome", :name => "funcionario[nome]"
      assert_select "input#funcionario_rg", :name => "funcionario[rg]"
      assert_select "input#funcionario_cpf", :name => "funcionario[cpf]"
      assert_select "input#funcionario_endereco", :name => "funcionario[endereco]"
      assert_select "input#funcionario_tel", :name => "funcionario[tel]"
      assert_select "input#funcionario_cel", :name => "funcionario[cel]"
      assert_select "input#funcionario_senha", :name => "funcionario[senha]"
    end
  end
end
