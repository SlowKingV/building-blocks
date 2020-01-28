DIC = ("a".."z").to_a.unshift(" ")

def cipher(msg, shf)
    chr = msg.chars
    new_msg = ""

    chr.each do |v1|
        len = new_msg.length
        DIC.each_with_index do |v2, i2|
            if v1 == v2
                new_msg += DIC[i2 - shf]
            elsif v1 == v2.upcase
                new_msg += DIC[i2 - shf].upcase
            end
        end
        new_msg += v1 if len == new_msg.length
    end

    return new_msg
end

puts "Write your phrase to cipher!"
msg = gets.chomp
puts "Write the Shift Factor!"
shf = gets.chomp.to_i
puts "Ciphered message: #{cipher(msg, shf)}"
