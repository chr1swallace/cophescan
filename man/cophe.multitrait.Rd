% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multitrait.R
\name{cophe.multitrait}
\alias{cophe.multitrait}
\title{Run cophescan on multiple traits at once}
\usage{
cophe.multitrait(
  trait.dat,
  causal.snpid,
  LDmat = NULL,
  method = "single",
  simplify = F,
  ...
)
}
\arguments{
\item{trait.dat}{Named(traits) list of coloc structured data for n_traits (Total number of traits)}

\item{causal.snpid}{query variant id}

\item{LDmat}{LD matrix}

\item{method}{either 'single' for cophe.single or 'susie' for cophe.susie}

\item{simplify}{if True removes intermediate results from output}

\item{...}{additional arguments of priors for cophe.susie or cophe.single}
}
\value{
if simplify is False returns multi-trait list of lists, each with two \code{data.frame}s:
\itemize{
\item summary is a vector giving the number of SNPs analysed, and the posterior probabilities of Hn (no shared causal variant), Ha (two distinct causal variants) and Hc (one common causal variant)
\item results is an annotated version of the input data containing log Approximate Bayes Factors and intermediate calculations, and the posterior probability SNP.PP.Hc of the SNP being causal for the shared signal \emph{if} Hc is true. This is only relevant if the posterior support for Hc in summary is convincing.
}
if simplify is False only returns dataframe with posterior probabilties of Hn, Hc and Ha with no intermediate results
}
\description{
Run cophescan on multiple traits at once
}
\author{
Ichcha Manipur
}
