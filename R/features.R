
label_bmi <- function(bmi) {
  stopifnot(is.numeric(bmi))
  as.character(
    cut(bmi,
        breaks = c(-Inf, 18.5, 25, 30, Inf),
        labels = c("0_underweight", "1_normal", "2_overweight", "3_obese"),
        right  = FALSE)
  )
}

