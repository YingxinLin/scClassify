% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict_scClassify.R
\name{predict_scClassifyJoint}
\alias{predict_scClassifyJoint}
\title{Testing scClassify model (joint training)}
\usage{
predict_scClassifyJoint(exprsMat_test, trainRes, cellTypes_test, k = 10,
  prob_threshold = 0.7, cor_threshold_static = 0.5,
  cor_threshold_high = 0.7, features = "limma", algorithm = "WKNN",
  similarity = "pearson", cutoff_method = c("dynamic", "static"),
  parallel = FALSE, ncores = 1, verbose = FALSE)
}
\arguments{
\item{exprsMat_test}{A list or a matrix indicates the expression matrices of the testing datasets}

\item{trainRes}{A `scClassifyTrainModel` or a `list` indicates scClassify training model}

\item{cellTypes_test}{A list or a vector indicates cell types of the testing datasets (Optional).}

\item{k}{An integer indicates the number of neighbour}

\item{prob_threshold}{A numeric indicates the probability threshold for KNN/WKNN/DWKNN.}

\item{cor_threshold_static}{A numeric indicates the static correlation threshold.}

\item{cor_threshold_high}{A numeric indicates the highest correlation threshold}

\item{features}{A vector indicates the method to select features, set as "limma" by default.
This should be one or more of "limma", "DV", "DD", "chisq", "BI".}

\item{algorithm}{A vector indicates the KNN method that are used, set as "WKNN" by default. This
should be one or more of "WKNN", "KNN", "DWKNN".}

\item{similarity}{A vector indicates the similarity measure that are used, set as "pearson" by default.
This should be one or more of "pearson",  "spearman", "cosine", "jaccard", "kendall", "binomial", "weighted_rank","manhattan"}

\item{cutoff_method}{A vector indicates the method to cutoff the correlation distribution. Set as "dynamic" by default.}

\item{parallel}{A logical input indicates whether running in paralllel or not}

\item{ncores}{An integer indicates the number of cores that are used}

\item{verbose}{A logical input indicates whether the intermediate steps will be printed}
}
\value{
list of results
}
\description{
Testing scClassify model (joint training)
}
\author{
Yingxin Lin
}
