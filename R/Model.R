New.ArgSet.LTPricing <- function() {
   object <- ArgSet.PremSolver(
      projStartDate = as.Date("2020-01-01"),
      pricIssAge = c(20L, 60L),
      pricFaceAmt = 500000,
      pricPremMode = 1L,
      unitFaceAmt = 1000,
      targProfitMargin = 0.1,
      digits = 2L,
      mortAssump = "MortAssump.LT",
      lapseAssump = "LapseAssump.LT",
      intrAssump = "IntrAssump.LT",
      expnsAssump = "ExpnsAssump.LT"
   )
   return(object)
}

New.Model.LTPricing <- function() {
   object <- Model.PremSolver(args = "ArgSet.LTPricing")
   return(object)
}