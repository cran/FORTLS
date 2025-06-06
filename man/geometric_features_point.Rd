\encoding{UTF-8}

\name{geometric_features_point}

\alias{geometric_features_point}

\title{This function obtains geometric features at point level}

\description{This function obtains geometric features at point level}


\usage{
geometric_features_point(x, y, z,
                         pto,
                         dist,
                         First_eigenvalue = TRUE,
                         Second_eigenvalue = TRUE,
                         Third_eigenvalue = TRUE,
                         Sum_of_eigenvalues = TRUE,
                         PCA_1 = TRUE,
                         PCA_2 = TRUE,
                         Anisotropy = TRUE,
                         Planarity = TRUE,
                         Linearity = TRUE,
                         Surface_variation = TRUE,
                         Normal_change_rate = TRUE,
                         Verticality = TRUE,
                         Number_of_points = TRUE,
                         omnivariance = TRUE,
                         eigenentropy = TRUE,
                         surface_density = TRUE,
                         volume_density = TRUE,
                         solver_thresh = 50000)}

\arguments{

  \item{x}{x}

  \item{y}{y}

  \item{z}{z}

  \item{pto}{pto}

  \item{dist}{dist}

  \item{First_eigenvalue}{First_eigenvalue}

  \item{Second_eigenvalue}{Second_eigenvalue}

  \item{Third_eigenvalue}{Third_eigenvalue}

  \item{Sum_of_eigenvalues}{Sum_of_eigenvalues}

  \item{PCA_1}{PCA_1}

  \item{PCA_2}{PCA_2}

  \item{Anisotropy}{Anisotropy}

  \item{Planarity}{Planarity}

  \item{Linearity}{Linearity}

  \item{Surface_variation}{Surface_variation}

  \item{Normal_change_rate}{Normal_change_rate}

  \item{Number_of_points}{Number_of_points}

  \item{omnivariance}{omnivariance}

  \item{eigenentropy}{eigenentropy}

  \item{surface_density}{surface_density}

  \item{volume_density}{volume_density}

  \item{solver_thresh}{solver_thresh}}

\value{Data frame}


\author{
Juan Alberto Molina-Valero}

\keyword{internal}



