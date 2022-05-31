class FooterExemploMapeamentos < SitePrism::Section
    element :img_facebook, 'img[name="follow_facebook"]'
end

class ProductsExemploMapeamentos < SitePrism::Section
    element :name, 'a.productName'
    element :price, 'a.productPrice'
end

class HomeExemploMapeamentos < SitePrism::Page

    set_url '/'

    element :btn_open_search, '#search #menuSearch'
    elements :menu_itens, '.nav-li-Links a ' # O elements é basicamente um array, entao para consultar elementos basta chamar o nome e o indice
    #menu_itens.fisrt.click


    section :footer, FooterExemploMapeamentos, 'footer.ng-scope' #sempre que usar uma section tem que ter uma classe
        #footer.img_facebook.click #clicando no logo facebook 
    sections :products, ProductsExemploMapeamentos, '.categoryRight li.ng-scope'
        #Products[2].price.click #dessa forma estamos clicando no preço do terceiro produto
        #products.last.click #clicando no ultimo produto

end