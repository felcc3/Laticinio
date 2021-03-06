require 'spec_helper'

feature 'cliente' do
    scenario 'cadastro' do
    visit new_cliente_path
    fill_in "Nome", :with => 'Felipe'
    fill_in "Rg", :with => '1234'
    fill_in "Cpf", :with => '5678'
    fill_in "Endereco", :with => 'Rua benzocriol'
    fill_in "Tel", :with => '9999'
    fill_in "Cel", :with => '9999'
    fill_in "Status", :with => 'ativo'

    click_button 'Salvar'

    page.should have_content 'Nome: Felipe'
    page.should have_content 'Rg: 1234'
    page.should have_content 'Cpf: 5678'
    page.should have_content 'Endereco: Rua benzocriol'
    page.should have_content 'Tel: 9999'
    page.should have_content 'Cel: 9999'
    page.should have_content 'Status: ativo'
  end
end
