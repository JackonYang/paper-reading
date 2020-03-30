# encoding: utf8
import csv
import string
import numpy as np
import math


def load_data(filename, train_ratio):
    with open(filename, "r") as f:
        csv_reader = csv.reader(f)
        next(csv_reader, None)  # header
        dataset = [(line[0], line[1]) for line in csv_reader]

    np.random.shuffle(dataset)
    train_size = int(len(dataset) * train_ratio)
    return dataset[:train_size], dataset[train_size:]


def train(train_set):
    total_doc_cnt = len(train_set)

    label_doc_cnt = {}
    bigdoc_words = {}

    for label, doc in train_set:
        if label not in label_doc_cnt:
            # init
            label_doc_cnt[label] = 0
            bigdoc_words[label] = []

        label_doc_cnt[label] += 1
        bigdoc_words[label].extend([
            w.strip(string.punctuation) for w in doc.split()])

    vocabulary = set()
    for words in bigdoc_words.values():
        vocabulary |= set(words)

    V = len(vocabulary)
    log_priors = {label: math.log(1.0 * cnt / total_doc_cnt) for label, cnt in label_doc_cnt.items()}

    log_likelihoods = dict()
    for label, words in bigdoc_words.items():
        word_cnt = len(words) + V
        log_likelihoods[label] = [math.log(1.0 * (1 + words.count(w)) / word_cnt) for w in vocabulary]

    return log_priors, log_likelihoods, vocabulary


def predict(log_priors, log_likelihoods, vocabulary, input_text, expect_label=None):
    words = {w.strip(string.punctuation) for w in input_text.split()}

    prob_max = 0
    label_max = None

    probs = {}  # tmp for log
    for label, likelihood in log_likelihoods.items():
        prob = log_priors[label] + sum([p for w, p in zip(vocabulary, likelihood) if w in words])
        probs[label] = prob

        if not prob_max or prob > prob_max:
            prob_max = prob
            label_max = label

    if expect_label and expect_label != label_max:
        print('---')
        print('expect: %s, got: %s' % (expect_label, label_max))
        print(probs)
        print(input_text)

    return label_max


def main():
    filename = 'spam.csv'
    train_ratio = 0.75
    train_data, test_data = load_data(filename, train_ratio)

    print('data loaded. train: {}, test: {}').format(
        len(train_data), len(test_data))

    # train the model
    log_priors, log_likelihoods, vocabulary = train(train_data)

    print('model trained. log_priors: {}, V(vocabulary word count): {}'.format(log_priors, len(vocabulary)))

    pos_true = 0
    pos_false = 0
    neg_false = 0
    neg_true = 0

    for label, text in test_data:
        got = predict(log_priors, log_likelihoods, vocabulary, text, label)
        if label != got:
            if label == 'spam':
                pos_false += 1
            else:
                neg_false += 1
        else:
            if label == 'spam':
                pos_true += 1
            else:
                neg_true += 1

    print('positive(spam) true: %s, false: %s' % (pos_true, pos_false))
    print('negative true: %s, false: %s' % (neg_true, neg_false))
    print('Precision: %.2f%%, Recall: %.2f%%' % (
        100.0 * pos_true / (pos_true + pos_false),
        100.0 * pos_true / (pos_true + neg_false),
        ))


if __name__ == '__main__':
    main()
