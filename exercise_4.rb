# Develop your work so far to preserve the existing capitalisation of the word
# e.g. Dog  -> Ogday
#      cram -> amcray
#
# Assume words either start with a capital letter or don't — don't worry about
# other formats

def pig_latin(word)
  word_array = word.split("")
  if word_array[0] =~ /[A-Z]/
    capitalise = true
  end
  if word.start_with?("a","e","i","o","u")
    return "#{word}way"
  else
    if word_array[0] == "q" and word_array[1] == "u"
      word_array = word_array.rotate(2)
    else
      until word_array[0].start_with?("a","e","i","o","u")
        word_array = word_array.rotate(1)
      end
    end
    return "#{word_array.join}ay" unless capitalise == true
      "#{word_array.join.downcase.capitalize!}ay"
  end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('Dog'), 'Ogday')
assert_equal(pig_latin('cram'), 'amcray')
