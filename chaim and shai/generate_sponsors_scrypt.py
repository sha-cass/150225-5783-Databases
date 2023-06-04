import csv
import random
import string
import pandas as pd
from faker import Faker
import faker_commerce

fake = Faker()
fake.add_provider(faker_commerce.Provider)
# Define the column names for the CSV file
fieldnames = ['Sponsor_Name', 'Product', 'Trademark', 'Office_Address', 'RP_Contact', 'SponsorID']

# Generate a list of dictionaries representing the sponsors
sponsors = []
for i in range(1, 19001):
    sponsor = {'Sponsor_Name': fake.company(),
               'Product': fake.ecommerce_name(),
               'Trademark': ''.join(random.choices(string.ascii_uppercase + string.digits, k=10)),
               'Office_Address': fake.address(),
               'RP_Contact': ''.join(random.choices(string.digits, k=10)),
               'SponsorID': i}
    sponsors.append(sponsor)

# Write the list of sponsors to a CSV file
df = pd.DataFrame(sponsors)
df.to_csv('sponsors.csv', index=False)
# with open('sponsors.csv', mode='w', newline='') as csvfile:
#    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
#    writer.writeheader()
#    for sponsor in sponsors:
#        writer.writerow(sponsor)
