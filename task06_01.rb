#"99 бутылок пива на стене..." Напишите программу, которая печатает стихи 
# этой излюбленной классической походной песни: "99 бутылок пива на стене".


bottles = 99
while bottles != 0
    puts bottles.to_s + ' бутылок пива на стене'
    puts bottles.to_s + ' бутылок пива!'
    puts 'Возьми одну, пусти по кругу'
    
    bottles = bottles - 1
    puts bottles.to_s + ' бутылок пива на стене!'  
    puts
end