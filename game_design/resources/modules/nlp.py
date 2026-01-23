# NLP scripts #

import sys

sys.path.append("./modules")

from modules.utilities import *

### spaCy ###

import spacy
import re 
from collections import Counter
import matplotlib.pyplot as plt



# Import basic English model from web. See description on [official website](https://spacy.io/models/en)
print("Importing en_core_web_md...")
nlp = spacy.load("en_core_web_md")

# Use senter for faster segmentation
#nlp.disable_pipe("parser")
#nlp.enable_pipe("senter")

# Get basic lemmas
basic_lemmas = set([nlp.vocab[str(word)].text for word in nlp.Defaults.stop_words])

print("Importing custom lemmas to exclude for statistics...")
exclude_words = set(list(json2dict("./exclude_words.json")))
basic_lemmas = basic_lemmas.union(exclude_words)

noise_words = {"um", "uh", "uhm", "er", "ah", "\n"}

def clean_text(text,noise_words=noise_words):
	# Remove noise words (case-insensitive)
    pattern = r"\b(" + "|".join(re.escape(word) for word in noise_words) + r")\b"
    text = re.sub(pattern, " ", text, flags=re.IGNORECASE)
    return text .replace("\n"," ")


def text_tokenization(
	text,
):  # Returns a dictionary of tokenizations information for the given text. See [official documentation](https://spacy.io/usage/linguistic-features#pos-tagging)
	doc = nlp(clean_text(text))  # import text as spaCy Doc object

	tokens = []

	for token in doc:
		tokens.append(
			{
				"text": token.text,
				"lemma": token.lemma_,
				"position": token.pos_,
				"tag": token.tag_,
				"dependecy": toke.dep_,
				"shape": token.shape_,
				"is_alpha": token.is_alpha,
				"is_stop": token.is_stop
			}
		)
	print(f"Input text: {text} \n\n Tokenization: {tokens}")
	return tokens


def text_lemmatizer(
	text,
):  # Returns the lemma of a given text. See [official documentation](https://spacy.io/usage/linguistic-features#lemmatization)
	doc = nlp(clean_text(text))
	lemmatizer = nlp.get_pipe("lemmatizer")
	print(lemmatizer.mode)

	lemmatization = ""
	for token in doc:
		lemmatization += f" {token.lemma_}"

	return lemmatization

def text_sentencer(text):
	doc = nlp(clean_text(text))
	sentences = [sent.text for sent in doc.sents]

	return sentences 

def texts_pipe_tokenization_from_directory(
	texts_directory,destination_directory=os.path.join("tmp","tokenizations")
):  # Similar to `text_tokenization` but for a group of .txt in a directory
	texts = []
	filenames = []
	for file in os.scandir(texts_directory):
		#print(f"Current file: {file.name}")
		if file.name.endswith(".txt"):
			text_file = open(file.path, "r")
			text = text_file.read()
			texts.append(clean_text(text))
			filenames.append(file.name)

	i = 0
	
	# for doc in nlp.pipe(texts):
	for text in texts:
		start_time = time.time()
		doc = nlp(clean_text(text))
		print(f"Current transcript: {filenames[i]}")
		sentences = text_sentencer(texts[i])
		tokenization = {
				"filename": filenames[i],
				"full_text": texts[i],
				"lemmization": text_lemmatizer(texts[i]),
				"sentences": sentences,
				"tokens": [
					{
						"text": token.text,
						"lemma": token.lemma_,
						"position": token.pos_,
						"tag": token.tag_,
						"dependecy": token.dep_,
						"shape": token.shape_,
						"is_alpha": token.is_alpha,
						"is_stop": token.is_stop
						#"morphology": token.morph,
					}
					for token in doc
				]
			}

		i += 1

		print(f"File tokenized in {time.time() - start_time} seconds...")
		print("Saving tokenization to JSON file")
		dict2json(tokenization,os.path.join(destination_directory,f"{tokenization["filename"].replace(".txt","")}_tokenization.json"))

### Frequency analysis

def lemma_frequency_analysis(tokenizations_directory=os.path.join("tmp","tokenizations"),destination_directory=os.path.join("tmp","statistical_analysis"),basic_lemmas=basic_lemmas):
	# Get all lemmas
	all_lemmas = []
	for file in os.scandir(tokenizations_directory):
		if file.name.endswith(".json"):
			print(f"Current file: {file.name}")
			tokens = json2dict(file.path)["tokens"]
			for token in tokens:
				if token["lemma"] not in basic_lemmas:
					all_lemmas.append(token["lemma"])

	freqs = Counter(all_lemmas)

	top_n = 1000
	most_common = freqs.most_common(top_n)
	words, counts = zip(*most_common)
	most_common_lemmas = []
	for i in range(len(words)):
		most_common_lemmas.append({"word": words[i], "counts": counts[i]})
	dict2json(most_common_lemmas,os.path.join(destination_directory,"lemma_frequencies.json"))
	plt.figure(figsize=(10,6))
	plt.bar(words, counts)
	plt.title(f"Top {top_n} Recurrent Non-Basic Lemmas")
	plt.xlabel("Word Lemma")
	plt.ylabel("Frequency")
	plt.xticks(rotation=45)
	plt.show()




		


