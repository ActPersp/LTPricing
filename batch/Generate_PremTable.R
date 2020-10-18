# Before running the script below, make sure to click RStudio menu items: Build > Install and Restart
library(Rgogo)
library(MortTables.CA)
library(LTPricing)

job <- Job.PremSolver(
   inpVars = list(Plan.LT20, Plan.LT65),
   dispatcher = function(plan) {return(Model.LTPricing)},
   exportToRda = TRUE,
   exportToExcel = "export/LTPremTable.xlsx"
)

#Run(job)     # Run job using single core
RunParallel(job)     # Run job unsing multiple cores

