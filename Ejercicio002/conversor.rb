class ConversorMedidas
    def pies_a_metros(pies)
      metros = pies / 3.2808
      return "#{pies} pies equivalen a #{metros} metros"
    end
  
    def metros_a_pies(metros)
      pies = metros * 3.2808
      return "#{metros} metros equivalen a #{pies} pies"
    end
  end

