require 'spec_helper'

describe "funcionarios/index" do
  before(:each) do
    assign(:funcionarios, [
      stub_model(Funcionario,
        :nome => "Nome",
        :rg => "Rg",
        :cpf => "Cpf",
        :endereco => "Endereco",
        :tel => "Tel",
        :cel => "Cel",
        :senha => "Senha"
      ),
      stub_model(Funcionario,
        :nome => "Nome",
        :rg => "Rg",
        :cpf => "Cpf",
        :endereco => "Endereco",
        :tel => "Tel",
        :cel => "Cel",
        :senha => "Senha"
      )
    ])
  end

  it "renders a list of funcionarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cel".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
  end
end
