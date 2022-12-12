class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @entry_title = title
    @entry_contents = contents 
    @furthest_word_read = 0
  end

  def title
    return @entry_title
  end

  def contents
    return @entry_contents
  end

  def count_words
    return @entry_contents.count(" ") + 1
  end

  def reading_time(wpm) 
    return (@entry_contents.split(" ").length.to_f/wpm).round(1)
  end

  def reading_chunk(wpm, minutes) 
    words_readable = wpm * minutes
    start_from = @furthest_word_read
    end_at = @furthest_word_read + words_readable
    word_list = words[start_from, end_at]
    if end_at >= count_words
      @furthest_word_read = 0
    else
      @furthest_word_read = end_at
    end
    return word_list.join(" ")
  end

  private

  def words
    return @entry_contents.split(" ")
  end
end