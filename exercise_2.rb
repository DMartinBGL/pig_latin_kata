# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.

def pig_latin(word)
  word_array = word.split("")
  if word.start_with?("a","e","i","o","u")
    return "#{word}way"
  else
    until word_array[0].start_with?("a","e","i","o","u")
    word_array = word_array.rotate(1)
    end
    return "#{word_array.join}ay"
  end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('cram'), 'amcray')
assert_equal(pig_latin('sprinkle'), 'inklespray')
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
