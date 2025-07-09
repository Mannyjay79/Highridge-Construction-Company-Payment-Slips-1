# Load necessary package
set.seed(123)  # for reproducibility

# Step 1: Dynamically generate a list of 400 workers
n <- 400
ids <- sprintf("W%03d", 1:n)
names <- paste0("Worker_", 1:n)
genders <- sample(c("Male", "Female"), n, replace = TRUE)
salaries <- sample(5000:35000, n, replace = TRUE)

# Step 2: Create a data frame
workers <- data.frame(
  ID = ids,
  Name = names,
  Gender = genders,
  Salary = salaries,
  EmployeeLevel = NA_character_,
  stringsAsFactors = FALSE
)

# Step 3: Apply conditional logic for EmployeeLevel
for (i in 1:nrow(workers)) {
  salary <- workers$Salary[i]
  gender <- workers$Gender[i]

  if (salary > 10000 & salary < 20000) {
    workers$EmployeeLevel[i] <- "A1"
  } else if (salary > 7500 & salary < 30000 & gender == "Female") {
    workers$EmployeeLevel[i] <- "A5-F"
  } else {
    workers$EmployeeLevel[i] <- "Unassigned"
  }
}

# Step 4: Preview the results
head(workers, 5)
