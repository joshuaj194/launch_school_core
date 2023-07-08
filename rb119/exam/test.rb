competitors = [{name: "Gracie-Leigh Cruz",      height: "5ft 2in",  weight: 129},
               {name: "Suhail Stott",           height: "5ft 7in",  weight: 169},
               {name: "Ava-May Hall",           height: "5ft 7in",  weight: 177},
               {name: "Katie-Louise Milne",     height: "5ft 11in", weight: 122},
               {name: "Akbar Bolton",           height: "5ft 4in",  weight: 135},
               {name: "Joy Thompson",           height: "5ft 10in", weight: 177},
               {name: "Rickie Nunez",           height: "5th 5in",  weight: 142},
               {name: "Yaqub Combs",            height: "6ft 0in",  weight: 193},
               {name: "Tulisa Guzman",          height: "5ft 3in",  weight: 111},
               {name: "Haydn Farrell",          height: "5ft 7in",  weight: 155}]

  
  def name_lets(hsh)
    hsh[:name].slice(0,3)
  end

  def weight_string(hsh)
    hsh[:weight].to_s
  end

  def name_id(arr)
    arr.map do |hsh|
      [hsh[:name], (name_lets(hsh) + weight_string(hsh))]
    end
  end

  competitors_id = name_id(competitors)

  p competitors_id





# first_three_letters |name|
#     name.slice(0,3)
#   end

def weight_in_string(petr)
  petr[weight].to_s
end

  name = "Gracie-Leigh Cruz"
  p name.slice(0,3)