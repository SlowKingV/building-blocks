DIC = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substr(str, dic)
    matches = {}

    words = str.downcase.split(%r{[^\w]+})

    dic.each do |eval|
        matches[eval] = 0
        words.each do |word|
            if word.include? eval then
                matches[eval] += 1
            end
        end
    end

    matches.delete_if {|key, val| val < 1}
    return matches
end

puts substr("Howdy partner, sit down! How's it going?", DIC)
                