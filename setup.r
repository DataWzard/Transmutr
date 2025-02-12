# Setup script for R environment

# Install IRkernel for Jupyter Notebook integration
if (!requireNamespace("IRkernel", quietly = TRUE)) {
  install.packages("IRkernel")
}
IRkernel::installspec()  # Register IRkernel with Jupyter

# Install necessary R packages for the project
packages <- c("dplyr", "ggplot2", "tidyr", "readr", "data.table", "readxl", "gridExtra", "broom", "fmsb", "hexbin", "png", "RColorBrewer", "progress", "scales")

# Install any missing packages
missing_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
if (length(missing_packages) > 0) {
  install.packages(missing_packages)
}

# Load installed packages to confirm
lapply(packages, library, character.only = TRUE)

# Print success message
cat("\nSetup complete: IRkernel and required packages installed successfully.\n")
