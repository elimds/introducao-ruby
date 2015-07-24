# Author: Eli Medeiros Sousa
# email: ems10@cin.ufpe.br
# date: 21-05-2015

def hello(name)
    "Hello, " << name    
end

def starts_with_consonant?(s)
    if s.match(/\A[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/)
        return true
    else
        return false
    end
end

def binary_multiple_of_4?(s)
    if s.nil? || s.empty?
        return false
    end
    unless s =~ /^[01]*$/
        return false
    end
    number = s.to_i(2)
    if (number % 4 == 0)
        return true
    else
        return false
    end
end