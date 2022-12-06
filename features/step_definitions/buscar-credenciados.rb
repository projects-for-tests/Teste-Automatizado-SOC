Dado('que acesso o menu funcionalidades') do

    visit "https://www.soc.com.br/"

    find(:xpath, "//div[@id='elementor-popup-modal-49782']/div[1]/div[2]/div[1]/div[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]").click
    find("#menu-1-4350684>li.menu-item.menu-item-type-custom.menu-item-object-custom.menu-item-has-children.menu-item-5775").click
    find(:xpath, "//a[@href='https://www.soc.com.br/rede-credenciada-socnet/']").click
    find("#b033cf8f-2414-426b-a078-7311eb289fa1").click    
    sleep 2

end
  
  Quando('navego no campo de busca de credenciados') do
    find("body > div.elementor.elementor-129 > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-de8c182.elementor-section-full_width.elementor-section-height-min-height.elementor-section-items-top.elementor-section-height-default.exad-glass-effect-no.exad-sticky-section-no > div > div > div > div > div > section > div > div > div > div > div > div.elementor-element.elementor-element-41966c6.elementor-align-center.exad-sticky-section-no.exad-glass-effect-no.elementor-widget.elementor-widget-button > div > div > a > span > span").click
    
   find("#ipt-busca-credenciado-2").set"Santos-SP, Brasil"
    find(:xpath, "//div[@class='opcao-autocomplete-maps active']").click
    #validar autocomplete
end
  
  Então('encontro os parceiros') do
   find(:xpath, "//section[@data-classificacao='1,2,8,14,15']").click
   sleep 2
    find(:xpath, "//div[@class='infowindow-maps']//button[1]").click
    sleep 10 
    

  end



