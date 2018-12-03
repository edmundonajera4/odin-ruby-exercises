def translate phrase    
    vowels = ['a', 'e', 'i', 'o', 'u', 'y',]

 pigLtn = 'ay'

 newPhrase = ''
 
    phrase = phrase.downcase
    words = phrase.split(" ")    
       
    for i in words        
        j = 0
        conso = ''
       while !vowels.include?(i[j]) and (j < 3)      
        
            if i[j] + i[j+1] == 'qu'
                conso += 'qu'               
                break
            end
            conso += i[j]
            j+=1            
       end
   
       p = i.gsub!(conso, '')
       k = i[0, i.length]
       p = k + conso + pigLtn
       newPhrase += p + ' '
   
    end
    newPhrase.strip
end