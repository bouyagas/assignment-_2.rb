text_analyzer = %q{Among other public buildings in a certain town, which for many 
reasons it will be prudent to refrain from mentioning, and to 
which I will assign no fictitious name, there is one anciently 
common to most towns, great or small: to wit, a workhouse; and 
in this workhouse was born; on a day and date which I need not 
trouble myself to repeat, inasmuch as it can be of no possible 
consequence to the reader, in this stage of the business at all 
events; the item of mortality whose name is prefixed to the head 
	of this chapter. }


def word_freq_hash (  )

	# Get input from user
	p "Please enter a string of text."
	text = gets

	# Split text into an array
	words = text.split(" ")

	# Declare a local hash to hold frequency of words
	results = Hash.new(0)

	# Count words and assign to key & value
	words.each { |t| results[t] += 1 }

	# Print results
	print "The word " 
	results.each { |k,v| print "\"" + k.to_s + "\" was used the most" if v == results.values.max} 
end

puts word_freq_hash(text_analyzer)


