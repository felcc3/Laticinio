require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nome => "Nome",
      :rg => "Rg",
      :cpf => "Cpf",
      :endereco => "Endereco",
      :tel => "Tel",
      :cel => "Cel",
      :status => "Status"
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
    rendered.should match(/Status/)
  end
end
