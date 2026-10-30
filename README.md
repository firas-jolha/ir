# Information Retrieval Lab Materials

Lab notebooks, an interactive visualization, and datasets for the **Information Retrieval course 2026**.
This site is published with GitHub Pages: <https://firas-jolha.github.io/ir/>

The labs go from collecting documents (crawling), through evaluating and building search (indexing, tolerant retrieval), to ranking with vector models and fast nearest-neighbour search.

## Contents

| Lab | Topic | Files |
|-----|-------|-------|
| 1 | Crawling and parsing: `robots.txt`, `requests`, regular expressions, BeautifulSoup, JSON / HTML / RSS | [`lab.01.ipynb`](lab1/lab.01.ipynb) |
| 2 | Headless browsing with Selenium, waiting and locating strategies, scrolling, pagination, crawl politeness, a mini inverted index | [`lab.02.ipynb`](lab2/lab.02.ipynb) |
| 3 | Measuring search quality: relevance assessment, Fleiss' kappa, Kendall's tau, MRR, precision, CG, DCG, nDCG@10 | [`lab.03.ipynb`](lab3/lab.03.ipynb) |
| 4 | Building an inverted index and answering queries (preprocessing, crawling, indexing, index statistics) | [`Lab.04.ipynb`](lab4/Lab.04.ipynb) |
| 5 | Tolerant retrieval: wildcard queries (k-gram index) and spellchecking | [`Lab.05.ipynb`](lab5/Lab.05.ipynb) (tasks), [`Lab.05.solution.ipynb`](lab5/Lab.05.solution.ipynb) (solution) |
| 6 | Vector space model: PCA / SVD, cosine similarity, a recommender, Rocchio relevance feedback, TF-IDF, BM25, LSA | [`Lab.06.ipynb`](lab6/Lab.06.ipynb) |
| 7 | Vector space model with ML: sentence embeddings, nearest-fact search, DCG@5 versus TF-IDF | [`Lab07.ipynb`](lab7/Lab07.ipynb) |
| 8 | Indexing with trees: KD-tree, Ball tree, VP-tree, Annoy, recall@N, the curse of dimensionality | [`lab08.ipynb`](lab8/lab08.ipynb), [`Tree.NN.html`](lab8/Tree.NN.html) |

### Interactive visualization (Lab 8)

[`lab8/Tree.NN.html`](lab8/Tree.NN.html) is a standalone page that animates how tree-based nearest-neighbour search works.
It is a single file, so you can open it directly in a browser:

**[Open the visualization](https://firas-jolha.github.io/ir/lab8/Tree.NN.html)**

## Opening the notebooks

GitHub Pages does not run notebooks. Use one of these:

- **View on GitHub**: click any notebook link above.
- **Run in Google Colab**: replace the notebook path in
  `https://colab.research.google.com/github/firas-jolha/ir/blob/main/<path>`.
  For example, [Lab 1 in Colab](https://colab.research.google.com/github/firas-jolha/ir/blob/main/lab1/lab.01.ipynb).
- **Run locally**: see [Local setup](#local-setup).

## Datasets

All local data is described in [`datasets/README.md`](datasets/README.md). Summary:

| Data | Used in | Description |
|------|---------|-------------|
| [`lab6/nutrition.csv`](lab6/nutrition.csv) | Lab 6 | Nutrition facts for common vegetables, fruits and seafood |
| [`datasets/nutr_img/`](datasets/nutr_img) | Lab 6 (optional section 6.2) | 25 small JPEG photos named after foods in the nutrition table |

Several labs download their data at run time instead of storing it here:

| Lab | Source |
|-----|--------|
| 1 | Short "facts" text file; sample JSON; RSS feeds |
| 2 | Product pages crawled from Yandex Market; output is saved as `collected_smartphones.csv` |
| 4 | News articles crawled from nbcnews.com |
| 5 | [Norvig's `big.txt`](https://norvig.com/big.txt) and spelling test sets, [GitHub Typo Corpus](https://github-typo-corpus.s3.amazonaws.com/data/github-typo-corpus.v1.0.0.jsonl.gz) |
| 7 | Curious facts text file (`facts.txt`) from the [hsu.ai course datasets](https://github.com/hsu-ai-course/hsu.ai/tree/master/code/datasets/nlp) |
| 8 | Synthetic uniformly distributed points; benchmark results go to `scalability_results.csv` |

## Local setup

The project uses [uv](https://docs.astral.sh/uv/) and Python 3.10 (see [`.python-version`](.python-version) and [`pyproject.toml`](pyproject.toml)).

```bash
git clone https://github.com/firas-jolha/ir.git
cd ir
uv sync            # installs the dependencies from pyproject.toml
source .venv/bin/activate
jupyter lab        # or open the notebooks in VS Code
```

`pyproject.toml` lists only the base dependencies (`bs4`, `feedparser`, `ipykernel`, `nltk`, `requests`).
Individual labs import more packages. Install the ones you need, for example:

| Lab | Extra packages |
|-----|----------------|
| 2 | `selenium`, `pandas` |
| 3 | `numpy`, `scipy`, `statsmodels` |
| 4 | `matplotlib` |
| 5 | `ipython` |
| 6 | `numpy`, `pandas`, `matplotlib`, `scikit-learn` |
| 7 | `sentence-transformers`, `scikit-learn`, `scipy` |
| 8 | `annoy`, `scikit-learn`, `scipy`, `matplotlib`, `tqdm` |

```bash
uv add pandas selenium   # example
```

## Repository layout

```
.
├── lab1/ … lab8/        # notebooks (and Lab 6 data, Lab 8 visualization)
├── datasets/
│   └── nutr_img/        # food photos for Lab 6
├── _config.yml          # GitHub Pages (Jekyll) settings
├── pyproject.toml       # Python dependencies
└── README.md
```

## Author

Firas Jolha, Innopolis University
