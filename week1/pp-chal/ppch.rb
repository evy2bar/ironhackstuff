class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end
  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

   array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

array_printer(array_of_languages)

aged_languages = array_of_languages.map do |language|
language.age += 1
language
end

puts "The programming languages aged one year are: "
array_printer(aged_languages)
#=====================
sort_languages = array_of_languages.sort do |language1, language2|
  language1.age <=> language2.age 
end
puts "The programming language sorted by age: "
array_printer(sort_languages)

#=====================
sort_languages = array_of_languages.sort do |language1, language2|
  language2.age <=> language1.age 
end
puts "The Programming Language Swifted position:"
array_printer(sort_languages)

#===================== 
array_of_languages.delete(java)  
   puts "The Programming Language minus java is:"
   array_printer(array_of_languages)
  

#This is another way to delete.
#=====================
  # array_of_languages.delete_if {|lang| lang == java }
  # puts "The Programming Language minus java is:"
  # array_printer(array_of_languages)
  


#======================
 aux = array_of_languages.shuffle
 puts "The Programming Language shuffled is:"
 array_printer(aux)


#this is another way of shuffle
#===============================#
#  array_of_languages.shuffle!
# puts "The Programming Language shuffled is:"
#   array_printer(array_of_languages)
  









