# Сделайте класс для апельсинового дерева  OrangeTree. У него должен быть метод height,
# возвращающий его высоту, и метод oneYearPasses, который при вызове увеличивает возраст
# дерева на один год. Каждый год дерево становится выше (как по-вашему, на какую высоту в
# год должно вырастать апельсиновое дерево?), а после определённого числа лет (опять же,
# как вы считаете) дерево должно умереть. Первые несколько лет оно не должно плодоносить,
# но через некоторое время должно, и мне кажется, что более старые деревья приносят каждый
# год больше плодов, чем молодые... настолько, насколько вы считаете это разумным. И,
# конечно, вам нужно иметь возможность сосчитать апельсины методом countTheOranges
# (который возвращает число апельсинов на дереве) и собирать их методом pickAnOrange
# (который уменьшает @orangeCount на единицу и возвращает строку с описанием, насколько
# вкусен был апельсин, или же он просто сообщает вам, что больше нет апельсинов для сбора
# в этом году). Удостоверьтесь, что те апельсины, что вы не собрали в этом году, опадут до
# следующего года.


class OrangeTree
    def initialize
        @height = 0 # возвраст дерева
        @randomAge = 40 + rand(15) #когда дерево умрет
        @orangeCount = 0 # кол-во опельсин
    end
    
    # вернуть возраст
    def height
        @height  
    end
    
    # вернуть кол-во опельсинов
    def countTheOranges
        @orangeCount
    end
    
    # +1 год к дереву
    def oneYearPasses
        if(@height<@randomAge)
            @height = height + 1
            puts 'Дереву исполняется ' + height.to_s + ' год(лет)'
            if(height > 2)
                @orangeCount = height + rand(height*2);
            end
            
        else
            puts 'К сожалению дерево умерло :('    
        end
    end
    
    # Собрать один опельсин
    def pickAnOrange
        str = 'На дереве нет апельсинов'
        if(@orangeCount>0)  
            @orangeCount = @orangeCount - 1
            random = rand(2)
            if(random == 0)
                str = 'плоховат'
            end
            if(random==1)
                str = 'средненько'
            end
            if(random==2)
                str = 'вкусняшка'
            end 
        end
        str
    end
    
end

Orange = OrangeTree.new
message = gets.chomp.downcase

while(message!='exit')
    if(message=='show height') 
        puts 'Возраст дерева ' + (Orange.height).to_s + 'год(лет)'
    end
    if(message=='one year passes')
        Orange.oneYearPasses   
    end
    if(message=='count the oranges')
       puts 'Кол-во опельсин на дереве ' + Orange.countTheOranges.to_s + ' шт.'
    end
    if(message=='pick an orange')
       puts Orange.pickAnOrange
    end
    message = gets.chomp.downcase
    
end
