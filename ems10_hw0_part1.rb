# Author: Eli Medeiros Sousa
# email: ems10@cin.ufpe.br
# date: 20-05-2015

def sum(inteiros)
    soma = 0
    inteiros.each do |item|
        soma += item
    end
    return soma
end

def max_2_sum(inteiros)
    max1 = nil
    max2 = nil
    inteiros.each do |item|
        if max1.nil? || item >= max1
            max2 = max1
            max1 = item 
        elsif max2.nil? || item >= max2
            max2 = item
        end
    end
    if max1.nil?
        if max2.nil?
            return 0
        else
            return max1
        end
    elsif max2.nil?
        return max1
    else
        return max1 + max2
    end 
end

def sum_to_n?(inteiros, n)
    test = false
    size = inteiros.length
    size.times do |item1|
        size.times do |item2|
            next if item2 == item1
            if (inteiros[item1] + inteiros[item2]) == n
                test = true 
                break
            end
        end
    end
    return test
end

