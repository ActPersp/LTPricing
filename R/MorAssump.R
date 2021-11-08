New.MortAssump.LT <- function() {
   object <- MortAssump(
      mortTable = c(M = "Mort.CIA9704L.M", F = "Mort.CIA9704L.F"),
      mortTableMult = 0.9
   )
   return(object)
}