require 'spec_helper'

describe "produtos/index" do
  before(:each) do
    assign(:produtos, [
      stub_model(Produto,
        :descricao => "Descricao",
        :preco => "",
        :quantidade_estoque => 1
      ),
      stub_model(Produto,
        :descricao => "Descricao",
        :preco => "",
        :quantidade_estoque => 1
      )
    ])
  end

  it "renders a list of produtos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
