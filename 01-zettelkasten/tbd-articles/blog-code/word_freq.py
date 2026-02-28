text = "here is a string, this is a text, this is a sentence"

sents = text.split(',')
freqs = {}

for sent in sents:
    words = sent.split()
    for word in words:
        if word in freqs:
            freqs[word] = freqs[word] + 1
        else:
            freqs[word] = 1

for word, freq in freqs.items():
    print("{} -- {}".format(word, freq))
