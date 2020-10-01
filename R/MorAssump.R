New.MortAssump.LT <- function() {
   object <- MortAssump(
      mortTable = c(M = "Mort.Sample.M", F = "Mort.Sample.F"),
      mortTableMult = 0.9
   )
   return(object)
}