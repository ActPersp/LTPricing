New.Plan.LT20 <- function() {
   object <- IPlan.LT(
      covYears = 20,
      premTable = c(M = "Prem.LT20.M", F = "Prem.LT20.F"),
      polFee = 100,
      modFactor = c("1" = 1, "2" = 0.51, "4" = 0.26, "12" = 0.09),
      commSchd = c(0.25, 0.15, 0.1, 0.1, 0.1),
      ovrdOnCommSchd = 0.5
   )
   return(object)
}
