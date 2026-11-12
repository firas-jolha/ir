# Datasets

Local data used by the lab notebooks. Back to the [course page](../README.md).

## `lab6/nutrition.csv`

Used in [Lab 6, Vector Space Model](../lab6/Lab.06.ipynb). It is stored next to the notebook, and the notebook can also load it from
`https://raw.githubusercontent.com/firas-jolha/ir/refs/heads/main/lab6/nutrition.csv`.

- **Content**: nutrition facts per serving for common vegetables, fruits and seafood (about 60 foods).
- **Columns**: `Food and Serving`, `Calories`, `Calories from Fat`, `Total Fat`, `Sodium`, `Potassium`, `Total Carbohydrate`, `Dietary Fiber`, `Sugars`, `Protein`, `Vitamin A`, `Vitamin C`, `Calcium`, `Iron`, `Saturated Fat`, `Cholesterol`, `Food Type`.
  Several nutrients appear twice, once in grams or milligrams and once as a percent of daily value (`%DV`). The second row of the file holds these units.
- **Format**: CSV with old-style (CR) line endings. Read it with pandas, which handles this, and check the units row before analysis.
- **Role in the lab**: each food becomes a vector of nutrient values, and the lab builds a "foods similar to this one" recommender with cosine similarity, PCA / SVD and Rocchio feedback.

## `datasets/nutr_img/`

25 small JPEG photos used in the optional section 6.2 of Lab 6 to show a query food next to its recommendations.

- **Naming**: `<food name>.jpg`, in lower case, matching the food names in `nutrition.csv` (for example `bell pepper.jpg`, `ocean perch.jpg`).
- **Foods**: asparagus, bell pepper, blue crab, broccoli, cantaloupe, carrot, catfish, cauliflower, celery, clams, cod, flounder, haddock, halibut, honeydew melon, ocean perch, orange roughy, oysters, pollock, rockfish, scallops, shrimp, summer squash, swordfish, tangerine.
- **Fallback**: if an image is missing, the notebook shows a text card instead.

## Data downloaded by the notebooks

Other labs fetch their data at run time, so nothing needs to be stored here. See the table in the [main README](../README.md#datasets).
