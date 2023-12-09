import random
from faker import Faker
import mysql.connector

# Create a Faker object to generate random data
fake = Faker()

# Set up a MySQL connection
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="secure_db"
)

# Create a cursor to execute SQL queries
cursor = db.cursor()

# Insert 100 random data items into the healthcare_info table
for _ in range(100):
    first_name = fake.first_name()
    last_name = fake.last_name()
    gender = random.choice([True, False])
    age = random.randint(18, 80)
    weight = round(random.uniform(50, 100), 2)
    height = round(random.uniform(150, 200), 2)
    health_story = fake.text()

    # SQL query to insert a new data item
    insert_query = "INSERT INTO healthcare_info (first_name, last_name, gender, age, weight, height, health_story) VALUES (%s, %s, %s, %s, %s, %s, %s)"
    data = (first_name, last_name, gender, age, weight, height, health_story)

    cursor.execute(insert_query, data)

# Commit the changes and close the database connection
db.commit()
db.close()
