Dado('que esteja na home') do
  @home_page = Pages::Home.new
  @home_page.load
end

Quando('realizar uma busca por um produto existente') do
  product_for_search = Factory::Static.static_data('valid_product')
  @home_page.search_for(product_for_search)
  @search_results_page = Pages::SearchResults.new
end

Então('deverão ser retornados resultados na busca') do
  expect(@search_results_page).to have_products
end

Quando('buscar pelo produto {string}') do |product|
  @home_page.search_for(product)
  @search_results_page = Pages::SearchResults.new
end