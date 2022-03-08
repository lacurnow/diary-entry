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
    p @cursor
    p end_cursor = (words_in_time + @cursor)
    if count_words > end_cursor

    end
    chunk = contents.split[@cursor...end_cursor].join(" ")
    @cursor += words_in_time
    p chunk
    
    
    # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end


entry = DiaryEntry.new("Diary", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vulputate congue rutrum. Fusce suscipit tortor ex, et sodales leo aliquam ut. Suspendisse fermentum est vel augue egestas, et fringilla mauris varius. Pellentesque in pharetra dui. Sed commodo nulla nec rhoncus elementum. Praesent vitae aliquet dolor, ac lobortis mauris. Maecenas sit amet dolor pharetra, suscipit magna quis, ornare elit. Aenean varius ullamcorper lorem eget varius. Etiam lacinia felis ligula, ut faucibus ligula vulputate id. Aenean non accumsan nulla. Quisque non facilisis sapien. Pellentesque dapibus, tortor sit amet commodo accumsan, sem tortor tincidunt metus, eu pulvinar eros quam a elit. Donec consectetur nisl ut enim tristique, vel congue orci vulputate. Aliquam sed ullamcorper ante, id lobortis turpis. Nunc urna lorem, convallis et varius eu, tempus non nisl. Donec a sem pharetra, ultricies ipsum id, hendrerit metus. Proin libero dui, scelerisque nec purus ac, malesuada fermentum elit. Nunc pellentesque blandit gravida. Nullam convallis, magna eu vulputate fermentum, nulla risus dignissim mi, eu pulvinar sem ex vel nulla. In est sapien, pellentesque sit amet faucibus eu, egestas in mauris. Sed vestibulum sapien arcu, id consequat tellus commodo fermentum. Donec eu tincidunt nunc, vitae rhoncus elit. Aenean varius enim arcu, a sollicitudin libero lacinia quis.")
entry.reading_chunk(200, 1)
entry.reading_chunk(200, 1)
entry.reading_chunk(200, 1)
entry.reading_chunk(200, 1)
