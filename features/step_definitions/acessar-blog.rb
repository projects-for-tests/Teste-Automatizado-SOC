Dado('que acesso o site da SOC') do

    visit "https://www.soc.com.br/"
    find("#b033cf8f-2414-426b-a078-7311eb289fa1").click
    sleep 2
    find(:xpath, "//section[@id='blocos-acima-rodape']/div[1]/div[1]/div[2]/div[1]/div[2]/div[3]/div[1]/div[1]/a[1]").click
    sleep 2
    end
    
    Quando('navego no campo de busca do blog') do
        find("#b033cf8f-2414-426b-a078-7311eb289fa1").click
        sleep 2
        find(".elementor-search-form__input").set "Prevenção de riscos e acidentes: saiba como um software de SST pode auxiliar"
        click_button "Pesquisar"
        sleep 3
    
    end
    
    Então('encontro noticias instituições') do
        sleep 2
        find("#b033cf8f-2414-426b-a078-7311eb289fa1").click
        find(:xpath, "(//a[@class='elementor-post__thumbnail__link'])[3]").click
        find("#b033cf8f-2414-426b-a078-7311eb289fa1").click
        sleep 2
    end
    
    
   