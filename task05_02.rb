# А вот здесь для вас есть кое-что, чтоб ещё поиграть с center, ljust и rjust:
# напишите программу, которая будет отображать "Содержание" так, чтобы это
# выглядело следующим образом:
#
#                    Содержание                   
#                                                 
# Глава 1:  Числа                             page 1
# Глава 2:  Буквы                            page 72
# Глава 3:  Переменные                      page 118

puts 'Содержание'.center(50)
puts 'Глава 1: Числа' + 'page 1'.rjust(35)
puts 'Глава 2: Буквы' + 'page 72'.rjust(35)
puts 'Глава 3: Переменные' + 'page 118'.rjust(30)
