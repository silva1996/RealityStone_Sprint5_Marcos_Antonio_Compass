require_relative '../sections/header'
require_relative '../sections/product'

module Pages
   class SearchResults < SitePrism::Page
        set_url '/#/search'

        section :header, Sections::Header, 'header'
        #elements :products, 'div.categoryRight li.ng-scope'
        sections :products, Sections::Products, 'div.categoryRight li.ng-scope'

        def acess_product_page(index)
            products[index].name.click
        end
    end
end