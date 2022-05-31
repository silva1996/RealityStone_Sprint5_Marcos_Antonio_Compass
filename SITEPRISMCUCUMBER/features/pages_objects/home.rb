class Home < SitePrism::Page
    set_url '/'

    element :btn_open_search, '#search #menuSearch'
    element :input_search, '#autoComplete'

    def search_for(product)
        btn_open_search.click
        input_search.set product
        btn_open_search.click
    end
end