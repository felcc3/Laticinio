require 'spec_helper'

describe "funcionarios/show" do
  before(:each) do
    @funcionario = assign(:funcionario, stub_model(Funcionario,
      :nome => "Nome",
      :rg => "Rg",
      :cpf => "Cpf",
      :endereco => "Endereco",
      :tel => "Tel",
      :cel => "Cel",
      :senha => "Senha"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rg/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cpf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tel/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cel/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Senha/)
  end
end
