class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @cursor = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    contents.split(" ").count
  end

  def reading_time(wpm) 
    (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) 
    words_in_time = wpm * minutes
    end_cursor = (words_in_time + @cursor)
    word_list = words[@cursor...end_cursor]
    if end_cursor > count_words
      @cursor = 0
    else
      @cursor = end_cursor
    end
    word_list.join(" ")
  end

  private

  def words
    @contents.split
  end
end


entry = DiaryEntry.new("Hey", "I have a big teddy bear which I won at a fair.")
entry.reading_chunk(5,1)
result = entry.reading_chunk(5, 1)
