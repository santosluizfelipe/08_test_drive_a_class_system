## Integration tests
- Test Diary.add() relies on DiaryEntry initializer to create entry to add
- find_best_entry_for_reading_time(wpm, minutes) => returns entry that is closest match to reading time
- reading_time => returns reading time if you were to read all entries

# Diary
- all returns entries list

## DiaryEntry
- title => returns title as a string
- contents => returns contents as a string
- count_words => returns int of word count of that entry
- reading_time(wpm) => returns int for est. reading time in minutes
- readig_chunk(wpm, minutes) => returns string you could read in given number of minutes