New.Plan.LT65 <- function() {
   object <- IPlan.LT(
      covToAge = 65,
      premTable = c(M = "Prem.LT65.M", F = "Prem.LT65.F"),
      polFee = 60,
      commSchd = c(0.25, 0.15, 0.1, 0.05, 0.05),
      ovrdOnCommSchd = 0.1
   )
   return(object)
}
