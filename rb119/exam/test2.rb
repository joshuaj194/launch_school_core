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

blah_variable = competitors.each do |competitor|
  puts "Up next competitor is #{competitor[:name]}."
  puts "They are #{competitor[:height]} and weigh #{competitor[:weight]}lbs."
  puts "Lets show them a big round of applause."
  puts ""
end

p blah_variable