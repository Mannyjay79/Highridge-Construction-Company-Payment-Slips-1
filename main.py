import random
import json

genders = ['Male', 'Female']
workers = []
for i in range(400):
    worker = {
        'id': f'W{i+1:03d}',
        'name': f'Worker_{i+1}',
        'gender': random.choice(genders),
        'salary': random.randint(5000, 35000)
    }
    workers.append(worker)

payment_slips = []
for worker in workers:
    try:
        employee_level = "Unassigned"
        salary = worker['salary']
        gender = worker['gender']

        if 10000 < salary < 20000:
            employee_level = "A1"
        elif 7500 < salary < 30000 and gender == "Female":
            employee_level = "A5-F"

        payment_slips.append({
            'ID': worker['id'],
            'Name': worker['name'],
            'Gender': gender,
            'Salary': salary,
            'EmployeeLevel': employee_level
        })

    except Exception as e:
        print(f"Error processing worker {worker['id']}: {e}")

with open("payment_slips.json", "w") as f:
    json.dump(payment_slips, f, indent=4)
