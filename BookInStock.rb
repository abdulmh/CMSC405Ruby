class BookInStock

    attr_reader :isbn
    attr_accessor :price

    def initialize(isbn, price)
        @isbn = isbn
        @price = price
    end

    def to_s
    "ISBN: #{@isbn}, Price #{@price}"
    end
end

b1 = BookInStock.new('isbn', 25.50)
puts b1.to_s