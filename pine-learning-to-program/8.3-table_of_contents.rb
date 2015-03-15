
# Initial Solution

def table_of_contents(chapters, line_width)
  title = "Table of Contents"

  puts(title.center(line_width))
  puts("");

  chapters.each_with_index do |chapter, index|
    chapter_number = index+1
    puts("Chapter #{chapter_number}:  #{chapter.first}".ljust(line_width/2) + "page #{chapter.last}".rjust(line_width/2))
  end
end

# Refactored Solution



# Driver Tests

table_of_contents([["Getting Started", 1],
                   ["Numbers", 9],
                   ["Letters", 13],
                   ["Variables and Assignment", 18],
                   ["Mixing It Up", 22],
                   ["More about Methods", 29],
                   ["Flow Control", 41],
                   ["Arrays and Iterators", 57]], 75)