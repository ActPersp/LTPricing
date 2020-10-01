New.Plan.LT20 <- function() {
   object <- IPlan.LT(
      covYears = 20,
      premTable = c(M = "Prem.LT20.M", F = "Prem.LT20.F"),
      polFee = 60,
      commSchd = c(0.25, 0.15, 0.1, 0.05, 0.05),
      ovrdOnCommSchd = 0.1
   )
   return(object)
}
