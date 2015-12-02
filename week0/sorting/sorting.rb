def sortingWord(string)
arr = string.split(" ")
arr = arr.sort  do |a,b| a.upcase <=> b.upcase 
end
p arr
end



sortingWord("Have a nice day.")
sortingWord("Fools fall for Foollish follies.")
sortingWord("Ruby is a fun language!")