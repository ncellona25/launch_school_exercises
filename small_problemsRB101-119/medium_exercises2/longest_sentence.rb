text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }

number_of_words = largest_sentence.split(' ').size
p number_of_words