library(Rgogo)
library(LTPricing)

job <- Job.PremSolver(
   inpVars = list(Plan.LT20),
   dispatcher = function(plan) {return(Model.LTPricing)},
   exportToRda = TRUE,
   exportToExcel = "export/LT20PremTable.xlsx"
)

Run(job)

