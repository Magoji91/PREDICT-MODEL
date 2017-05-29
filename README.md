# PREDICT-MODEL

Why would you want to predict upcoming words, or assign probabilities to sentences?

Second, Daniel Jurafsky and James H. Martín (2014) in Chapter 4: N-Grams (Voice and Language Processing), probabilities are essential for identifying words with ambiguous meanings and spelling errors, as well as for speech recognition Or recognition of written letters. For example, in the film Take the Money and Run, Woody Allen tries to steal the bank by threatening the bank teller with a badly written note, which induces the cashier to read "I have a gub" instead of "I have a gun" Such a mistake could be avoided if the bank teller had a language processing system that would avoid misinterpretation by recognizing that the sequence "I have a gun" is much more likely than the non-word "I have a gub" Or something more absurd like "I have a ghoul".

How to predict?

There are several models of creating an n-gram prediction application, like N-grams with the modified Kneser-Ney smoothing, normalized stupid backoff, structers maximum entrophy language model whti hierarchical softmax, binary maximum entropy language model, neural network based, recurrent neural network language model, etc.
In front of the models mentioned above, I prefer to use a model with a simpler algorithm than a complex one, such as Stupid Backoff because in this n-gram model, if the N-gram we need has zero counts, we go back to the program (N-1) until there is a correct probability distribution. For example: if we use the trigram and it is not enough to present a correct probability distribution, the program will use the bigram, and if that is insufficient the unigram. In other words, we only "back off" to a lower-order N-gram if we have zero evidence for a higher-order N-gram.
