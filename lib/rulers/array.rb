class Array 
    def deeply_empty?
        empty? || all?(&:empty?)
    end

    def is_nathan?
        puts "Yo I'm here in the machine."
    end
end