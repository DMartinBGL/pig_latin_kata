# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

def pig_latin(word)
  word_array = word.split("")
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
    return "#{word_array.join}ay"
  end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('quick'), 'ickquay')
assert_equal(pig_latin('quilt'), 'iltquay')
assert_equal(pig_latin('qat'), 'atqay')
