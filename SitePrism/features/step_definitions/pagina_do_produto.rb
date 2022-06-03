Quando('realizar uma busca por um produto existente') do
    @home_page.search_for('SPEAKERS')
    @search_results_page = Pages::SearchResults.new
  end
  
  Quando('acessar a página do produto') do
    @search_results_page.acess_product_page(1)
    @product_page = Pages::ProductPage.new  
  end
  
  Quando('alterar a cor do produto') do
    @image_before = @product_page.main_image['src']
    @product_page.colors[1].click
  end
  
  Então('deverá alterar a imagem apresentada na PDP') do
    expect(@product_page.main_image['src']).not_to eql @image_before
  end