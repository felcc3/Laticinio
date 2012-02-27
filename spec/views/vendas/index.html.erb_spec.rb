require 'spec_helper'

describe "vendas/index" do
  before(:each) do
    assign(:vendas, [
      stub_model(Venda,
        :Funcionario => nil,
        :Cliente => nil,
        :desconto => 1,
        :preco_total => ""
      ),
      stub_model(Venda,
        :Funcionario => nil,
        :Cliente => nil,
        :desconto => 1,
        :preco_total => ""
      )
    ])
  end

  it "renders a list of vendas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
