module ApplicationHelper
    def titre
    base_titre= "Mon App"
    if @titre.nil?
        base_titre
    else
        "#{@titre} | #{base_titre}"
    end
    
    end
end
