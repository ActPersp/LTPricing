# LTPricing
A sample pricing project for level term insurance products.

## Objective

The objective of this project is to provide an introductory demonstration of actuarial modeling using Rgogo Framework.  The project demonstratesus a simple pricing exercise for a 20-year level term insurance and a level term to age 65 using Rgogo framework.  The intention is to show how Rgogo can help actuaries to build actuarial models easily and quickly.

## Prerequisite

You must install `Rgogo` package and Canadian mortality table package `MortTables.CA` before using this sample project.  You can download these packages with the following commands if you have not done so:

```R
library(devtools)
install_github(repo = "ActPersp/Rgogo")
install_github(repo = "ActPersp/MortTables.CA")
```

It is also assumed that you are using RStudio for development environment.

## Modifying Model

You can make changes to the model by modifying any R script files under "R" subfolers.  

Each R script file under "R" subfolder represents a model component:

| File Name | Model Component |
| --- | --- |
| Plan.LT20.R | 20-year level term product features |
| Plan.LT65.R | Level term to age 65 product features |
| MortAssump.R | Mortality assumption |
| LapseAssump.R | Lapse assumption |
| IntrAssump.R | Interest rate assumption |
| ExpnsAssump.R | Expense assumption |
| Model.R| Model for solving premium rates |

## Deploying Model

Every time you make any change to the above files, you must deploy the project by executing the following commands before running the model.

```R
Rgogo::DeployProject("LTPricing", overwrite = TRUE)
```

## Running Model

Run the script file Generate_PremTable.R under "batch" subfolder.  The job will calculate premium rates and export the premium tables to an Excel file under "export" subfolder.




