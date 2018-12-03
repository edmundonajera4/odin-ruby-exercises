class Book
# write your code here
$dontUpcase = ['and', 'the', 'a', 'an', 'in', 'of']

def title 
    @title
end

def title=(name)         
    newTitle = ''
    tempTitle = name.split       
    for i in tempTitle
        if !$dontUpcase.include?(i)
            i.capitalize!
        end
        if $dontUpcase.include?(tempTitle[0])        
            i.capitalize!
        end
    
    newTitle += i + ' '
    end
    @title = newTitle.strip      
    puts @title 
end
end