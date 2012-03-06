# coding: utf-8

require 'spec_helper'

feature 'venda' do

  before :all do
    FactoryGirl.create :funcionario
    FactoryGirl.create :cliente
  end

  scenario 'sem desconto' do
    visit new_venda_path
    select("Jorge", from: "Funcionario")
    select("Chico", from: "Cliente")
    fill_in "Desconto", :with => '0'
    fill_in "Preco total", :with => '20'

    click_button 'Salvar'

    page.should have_content 'Funcionario: Jorge'
    page.should have_content 'Cliente: Chico'
    page.should have_content 'Desconto: 0'
    page.should have_content 'Preco total: 20'
  end

  scenario 'com desconto' do
    visit new_venda_path
    select("Jorge", from: "Funcionario")
    select("Chico", from: "Cliente")
    fill_in "Desconto", :with => '5'
    fill_in "Preco total", :with => '30'

    click_button 'Salvar'

    page.should have_content 'Funcionario: Jorge'
    page.should have_content 'Cliente: Chico'
    page.should have_content 'Desconto: 5'
    page.should have_content 'Preco total: 30'
  end

end
