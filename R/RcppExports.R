# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

geometric_features_point <- function(x, y, z, pto, dist, First_eigenvalue = TRUE, Second_eigenvalue = TRUE, Third_eigenvalue = TRUE, Sum_of_eigenvalues = TRUE, PCA_1 = TRUE, PCA_2 = TRUE, Anisotropy = TRUE, Planarity = TRUE, Linearity = TRUE, Surface_variation = TRUE, Normal_change_rate = TRUE, Verticality = TRUE, Number_of_points = TRUE, omnivariance = TRUE, eigenentropy = TRUE, surface_density = TRUE, volume_density = TRUE, solver_thresh = 50000L) {
    .Call(`_FORTLS_geometric_features_point`, x, y, z, pto, dist, First_eigenvalue, Second_eigenvalue, Third_eigenvalue, Sum_of_eigenvalues, PCA_1, PCA_2, Anisotropy, Planarity, Linearity, Surface_variation, Normal_change_rate, Verticality, Number_of_points, omnivariance, eigenentropy, surface_density, volume_density, solver_thresh)
}

geometric_features <- function(m, dist, First_eigenvalue = TRUE, Second_eigenvalue = TRUE, Third_eigenvalue = TRUE, Sum_of_eigenvalues = TRUE, PCA_1 = TRUE, PCA_2 = TRUE, Anisotropy = TRUE, Planarity = TRUE, Linearity = TRUE, Surface_variation = TRUE, Normal_change_rate = TRUE, Verticality = TRUE, Number_of_points = TRUE, omnivariance = TRUE, eigenentropy = TRUE, surface_density = TRUE, volume_density = TRUE, threads = 1L, solver_thresh = 50000L) {
    .Call(`_FORTLS_geometric_features`, m, dist, First_eigenvalue, Second_eigenvalue, Third_eigenvalue, Sum_of_eigenvalues, PCA_1, PCA_2, Anisotropy, Planarity, Linearity, Surface_variation, Normal_change_rate, Verticality, Number_of_points, omnivariance, eigenentropy, surface_density, volume_density, threads, solver_thresh)
}

fit_circle_cpp_modified <- function(points) {
    .Call(`_FORTLS_fit_circle_cpp_modified`, points)
}

is_one_row_all_na <- function(df) {
    .Call(`_FORTLS_is_one_row_all_na`, df)
}

sample_indices <- function(total_number_obs, return_obs) {
    .Call(`_FORTLS_sample_indices`, total_number_obs, return_obs)
}

internal_ransac <- function(dat, dist = 0.05) {
    .Call(`_FORTLS_internal_ransac`, dat, dist)
}

RANSAC_cpp <- function(data, dist = 0.05) {
    .Call(`_FORTLS_RANSAC_cpp`, data, dist)
}

iterations_RANSAC <- function(data, n_iterations = 600L) {
    .Call(`_FORTLS_iterations_RANSAC`, data, n_iterations)
}

weighted_mean_arit <- function(x, w) {
    .Call(`_FORTLS_weighted_mean_arit`, x, w)
}

weighted_mean_sqrt <- function(x, w) {
    .Call(`_FORTLS_weighted_mean_sqrt`, x, w)
}

weighted_mean_geom <- function(x, w) {
    .Call(`_FORTLS_weighted_mean_geom`, x, w)
}

weighted_mean_harm <- function(x, w) {
    .Call(`_FORTLS_weighted_mean_harm`, x, w)
}

height_perc_cpp <- function(rho_seq, z, rho) {
    .Call(`_FORTLS_height_perc_cpp`, rho_seq, z, rho)
}

fixed_area_cpp <- function(radius_seq, hdist, d, h, num) {
    .Call(`_FORTLS_fixed_area_cpp`, radius_seq, hdist, d, h, num)
}

k_tree_cpp <- function(k_seq, radius_seq, k, d, h, num) {
    .Call(`_FORTLS_k_tree_cpp`, k_seq, radius_seq, k, d, h, num)
}

angle_count_cpp <- function(baf_seq, baf, d, h, num) {
    .Call(`_FORTLS_angle_count_cpp`, baf_seq, baf, d, h, num)
}

