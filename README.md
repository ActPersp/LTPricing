# LTPricing
A sample project for level term insurance pricing using Rgogo Framework.

## Objective

The objective of this project is to provide an introductory demonstration of actuarial modeling using Rgogo Framework.  The project uses a 20-year level term pricing model to show how Rgogo can help actuaries to build actuarial models easily and quickly.

## Prerequisite

You must install Rgogo package before using this sample project.  You can download and install Rgogo with the following commands:

```R
library(devtools)
install_github(repo = "ActPersp/Rgogo")
```

## Modifying Model

You can make changes to the model by modifying any R script files under "R" subfolers.  

Each R script file under "R" subfolder represents a model component:

|--- | --- |
| File Name | Model Component |
| --- | --- |
| Plan.LT20.R | 20-year level term product features |
| MortAssump.R | Mortality assumption |
| LapseAssump.R | Lapse assumption |
| IntrAssump.R | Interest rate assumption |
| ExpnsAssump.R | Expense assumption |
| Model.R| Model for solving premium rates |

Every time you make any change to the above files, you must deploy the project by executing the following commands before running the model.

```R
Rgogo::DeplopyProject("LTPricing", overwrite = TRUE)
```

## Running Model

Before running the model, make sure that you have deployed the project as described above.

Run the script file Generate_PremTable.R under "batch" subfolder.  The job will calculate premium rates and export the premium table to an Excel file under "export" subfolder.




