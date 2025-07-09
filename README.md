# Highridge Construction Company – Payment Slips Generator

## 📌 Project Overview
This project was developed for the Module 1 Assignment of the Highridge Construction Company. It automates the generation of 400 dynamic worker records and assigns employee levels using both Python and R.

You act as a software engineer contracted to build a weekly payment slip generator with employee classification logic.

---

## 🛠 Files Included
| File Name               | Description                                      |
|------------------------|--------------------------------------------------|
| `main.py`              | Python script to generate workers and classify them. |
| `convert_python_data.R`| Revised R script that dynamically creates and classifies workers independently. |
| `payment_slips.json`   | Output of the Python script.                     |
| `README.md`            | This documentation.                             |

---

## 🚀 How to Run the Project

### ✅ Python Script
Make sure Python 3 is installed. Then run:

```bash
python main.py
```

This generates the `payment_slips.json` file.

---

### ✅ R Script
Make sure R is installed. Open R or RStudio and run:

```r
source("convert_python_data.R")
```

This will dynamically create worker data and print a preview.

---

## 🧾 Example Output (from Python)

```json
[
  {
    "ID": "W001",
    "Name": "Worker_1",
    "Gender": "Female",
    "Salary": 18324,
    "EmployeeLevel": "A1"
  },
  ...
]
```

---

## 📅 Assignment Info
- **Course**: BAN6420 Module 1 Assignment
- **Due Date**: June 10, 2025
- **Author**: Emmanuel

---

## 📎 Notes
- Python and R both now fully meet assignment requirements.
- R script has been updated to include dynamic worker generation and classification logic.
