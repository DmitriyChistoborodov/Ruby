# Давайте напишем программу, которая просит нас ввести сколько угодно слов (по одному
# слову в строке до тех пор, пока мы не нажмём Enter на пустой строке) и которая затем
# повторяет нам эти слова в алфавитном порядке.

lines = []
message = gets.chomp

while(message!='')
    lines.push(message)
    message = gets.chomp
end
puts lines.sort