class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @entry_title = title
    @entry_contents = contents 
  end

  def title
    return @entry_title
  end

  def contents
    return @entry_contents
  end

  def count_words
    return @entry_contents.split(" ").length
  end

  def reading_time(wpm) 
    return (@entry_contents.split(" ").length.to_f/wpm).round(1)
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
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