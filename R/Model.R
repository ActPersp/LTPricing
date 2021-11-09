# Create an argument set named ArgSet.LTPricing for the pricing model.
# An argument set contains all the input argument values required by a model.
New.ArgSet.LTPricing <- function() {
   object <- ArgSet.PremSolver(
      projStartDate = as.Date("2022-01-01"),
      pricIssAge = c(20L, 55L),
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

# Create a pricing model and assigin the argument set ArgSet.LTPricing to it.
New.Model.LTPricing <- function() {
   object <- Model.PremSolver(args = "ArgSet.LTPricing")
   return(object)
}