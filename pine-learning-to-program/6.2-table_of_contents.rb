
# Initial Solution

def table_of_contents
  line_width = 60
  title = "Table of Contents"
  chapters = {"Chapter 1:  Getting Started" => 1,
              "Chapter 2:  Numbers" => 9,
              "Chapter 3:  Letters" => 13}

  puts(title.center(line_width))
  puts("");
  chapters.each do |heading, page_number|
    puts(heading.ljust(line_width/2) + "page #{page_number}".rjust(line_width/2))
  end

end

# Refactored Solution

def table_of_contents
  line_width = 60
  title = "Table of Contents"
  chapters = [["Getting Started", 1],
              ["Numbers", 9],
              ["Letters", 13]]

  puts(title.center(line_width))
  puts("");
  chapters.each_with_index do |chapter, index|
    chapter_number = index+1
    puts("Chapter #{chapter_number}:  #{chapter.first}".ljust(line_width/2) + "page #{chapter.last}".rjust(line_width/2))
  end
end


# Driver Tests

table_of_contents