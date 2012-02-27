require 'spec_helper'

describe "vendas/show" do
  before(:each) do
    @venda = assign(:venda, stub_model(Venda,
      :Funcionario => nil,
      :Cliente => nil,
      :desconto => 1,
      :preco_total => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
