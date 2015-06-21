# Доработайте englishNumber. Во-первых, добавьте тысячи. Так она  должна возвращать
# 'one thousand' вместо 'ten hundred', а также 'ten thousand' вместо 'one hundred
# hundred'.

#Ещё доработайте englishNumber. Теперь добавьте миллионы, чтобы вам возвращалось 
# 'one million' вместо 'one thousand thousand'. Затем попробуйте добавить миллиарды 
# и триллионы. Насколько далеко вы  сможете зайти?

def englishNumber number
  if number < 0
    return 'Пожалуйста, введите неотрицательное число.'
  end
  if number == 0
    return 'zero'
  end
  
  numString = ''
  
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']

  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  left  = number
    
    
     # -------------//ТРИЛИАРДЫ//----------------
  write = left/1000000000000
  left  = left - write*1000000000000
    
    if  write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' Trilliard'

    
    if left > 0
      numString = numString + ' '
    end
  end
    
     # -------------//МИЛИАРДЫ//----------------
  write = left/1000000000
  left  = left - write*1000000000
    
    if  write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' billion'

    
    if left > 0
      numString = numString + ' '
    end
  end
    
    # -------------//МИЛИАРДЫ//----------------
  write = left/1000000000
  left  = left - write*1000000000
    
    if  write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' billion'

    
    if left > 0
      numString = numString + ' '
    end
  end
    
     # -------------//МИЛИОНЫ//----------------
  write = left/1000000
  left  = left - write*1000000
    
    if  write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' million'

    
    if left > 0
      numString = numString + ' '
    end
  end
   
    
# -------------//ТИСЯЧИ//----------------
  write = left/1000
  left  = left - write*1000 
    
    if  write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' thousand'

    
    if left > 0
      numString = numString + ' '
    end
  end
    
  # -------------//СОТНИ//----------------
  write = left/100         
  left  = left - write*100 

if  write > 0

    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'

    
    if left > 0
     
      numString = numString + ' '
    end
  end
  
# -------------//ДЕСЯТКИ//----------------
  write = left/10       
  left  = left - write*10  
  
  if write > 0
    if ((write == 1) and (left > 0))
      #  Поскольку мы не можем вывести "tenty-two" вместо "twelve",
      #  нам нужно сделать для них особую обработку.
      numString = numString + teenagers[left-1]
      #  "-1" здесь потому, что teenagers[3] это 'fourteen', а не 'thirteen'.
      
      #  Поскольку уже мы позаботились о цифре для единиц,
      #  нам не осталось ничего для вывода.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      #  "-1" потому, что tensPlace[3] это 'forty', а не 'thirty'.
    end
    
    if left > 0
      #  Так, мы не выводим 'sixtyfour'...
      numString = numString + '-'
    end
  end
  
  write = left  #  Сколько единиц осталось вывести?
  left  = 0     #  Вычтем эти единицы.
  
  if write > 0
    numString = numString + onesPlace[write-1]
    #  "-1" потому, что onesPlace[3] это 'four', а не 'three'.
  end
  
  #  А теперь мы просто возвращаем "numString"...
  numString
end


bottles = 9999
while bottles != 0
    puts englishNumber(bottles).to_s + ' бутылок пива на стене'
    puts englishNumber(bottles).to_s + ' бутылок пива!'
    puts 'Возьми одну, пусти по кругу'
    
    bottles = bottles - 1
    puts englishNumber(bottles).to_s + ' бутылок пива на стене!'  
    puts
end


