New.LapseAssump.LT <- function() {
   object <- LapseAssump(
      lapseRate = RepeatTail(c(0.15, 0.1, 0.075, 0.05, 0.025), len = 100)
   )
   return(object)
}