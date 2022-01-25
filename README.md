# Amazon-Reviews-Analysis
(class project)
* Dataset: amazon_us_reviews (https://huggingface.co/datasets/amazon_us_reviews)

* Tasks:
- Explore dataset by finding correlation, calculating means, and sorting values of helpfulness scores and review ratings using AWK and SED
- Change review ratings into binary numbers based on median, recompute correlation using datamash, and plot correlations via Gnuplot
- Process text in review bodies such as remove stop words, lemmatize words, and so on using AWK and SED
- Compare common words between cleaned reviews and clean tweet posts using shell script to find top common words in helpful and unhelpful reviews
- Write shell script to train predicting model with Weka on files that contain both Amazon reviews and Twitter tweets, this gives better than model with only AMZ reviews

* Tools: Bash, awk, sed, datamash, Gnulot, Weka
