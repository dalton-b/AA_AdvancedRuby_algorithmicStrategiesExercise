# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
    modified_string = str
    counter = 0
    (0...str.length - 1).each do |i|
        if str[i] == str[i+1]
            counter = counter + 1
        elsif counter > 0
            modified_string[i-counter..i] = counter
        end
    end

    # for char in string
    # if char is the same as previous char
    # increment counter
    # if char changes
    # replace chars with number

    return modified_string
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
