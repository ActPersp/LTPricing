library(Rgogo)
library(MortTables.CA)
library(LTPricing)

job <- Job.PremSolver(
   inpVars = list(Plan.LT20, Plan.LT65),
   dispatcher = function(plan) {return(Model.LTPricing)},
   exportToRda = TRUE,
   exportToExcel = "export/LTPremTables.xlsx"
)

Run(job)

