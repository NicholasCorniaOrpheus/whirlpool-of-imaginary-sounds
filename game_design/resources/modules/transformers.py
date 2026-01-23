# Scripts for automatic summarization and other features using the Transformers library

from transformers import pipeline

# Models are saved in "~/.cache/huggingface/hub"


def summarize_text(
    text_string, max_length=1500, min_length=400, model="sshleifer/distilbart-cnn-12-6"
):
    summarizer = pipeline("summarization", model=model)

    summary = summarizer(
        text_string, max_length=max_length, min_length=min_length, do_sample=False
    )[0]["summary_text"]

    return summary
