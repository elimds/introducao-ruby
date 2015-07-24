# Author: Eli Medeiros Sousa
# email: ems10@cin.ufpe.br
# date: 26-05-2015

class BookInStock 
    attr_accessor :isbn
    attr_accessor :price

    def initialize(isbn = "", price = 0.0)
        if (isbn.empty?)
            raise ArgumentError, "ISBN nao pode ser vazio"
        end
        if (price <= 0.0)
            raise ArgumentError, "O preco do livro nao pode ser menor ou igual a 0 (zero)" 
        end
        @isbn = isbn
        @price = price
    end
    
    def price_as_string 
        return "$#{format("%.2f", price)}"
    end
end
