module Sections
 class Header < SitePrism::Section
   element :btn_open_search, '#search #menuSearch'
   element :input_search, '#autoComplete'
 end
end