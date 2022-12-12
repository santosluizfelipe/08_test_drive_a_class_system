class Diary
  def initialize
    @entries_list = []
  end

  def add(entry) 
    @entries_list << entry
  end

  def all
    return @entries_list
  end

  def count_words
      return @entries_list.map(&:count_words).sum
  end

  def reading_time(wpm) 
    fail "Can't enter a 0" if wpm <= 0 
    total_count = count_words
    return total_count / wpm.to_f
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries(wpm, minutes).max_by do |entry|
      entry.count_words
    end
  end

  private
  def readable_entries(wpm, minutes)
    return @entries_list.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end
  end

end