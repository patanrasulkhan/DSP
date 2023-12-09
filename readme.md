# Secure Database-as-a-Service

## Table of Contents
- [Secure Database-as-a-Service](#secure-database-as-a-service)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Project Goals](#project-goals)
  - [Background](#background)
  - [Project Requirements](#project-requirements)
    - [Basic Setup (5 pts total)](#basic-setup-5-pts-total)
    - [Security Features (25 pts total)](#security-features-25-pts-total)
  - [Getting Started](#getting-started)
  - [Project Structure](#project-structure)
  - [Security Features](#security-features)
  - [Usage](#usage)
  - [Contributing](#contributing)
  - [License](#license)

## Introduction
The Secure Database-as-a-Service project aims to design, implement, and evaluate a secure database system that allows users to protect their data stored in the cloud while utilizing cloud-based database services. This project focuses on a simplified healthcare information database that includes various fields such as first name, last name, gender, age, weight, height, and health story. The primary challenge is to provide robust security features to ensure data privacy and integrity in a semi-trusted cloud environment.

## Project Goals
The primary goals of this project are as follows:
1. Learn to use project management tools, especially Git and GitHub, for collaborative development.
2. Practice security and privacy demand analysis.
3. Implement security and privacy tools to protect sensitive data in a cloud-based database.

## Background
The project revolves around the concept of Database-as-a-Service, where cloud service providers offer scalable and reliable database services to users. However, this convenience comes with security concerns, as malicious insiders could potentially access data without authorization. To mitigate these concerns, data encryption is applied before storing it in the database. The project assumes a semi-trusted cloud environment, where the cloud follows predefined protocols but may attempt to extract information from exchanged messages.

## Project Requirements
### Basic Setup (5 pts total)
1. Set up the SQL database system (2 pts).
2. Create a table with the healthcare information specified in Section 3 and populate it with a minimum of 100 data items (3 pts).

### Security Features (25 pts total)
1. User authentication (5 pts):
   - Implement username/password authentication.
   - Ensure that the cloud does not store the original password.
2. Basic access control mechanism (5 pts):
   - Define two user groups (Group H and Group B) with different access permissions.
   - Users from both groups can query data, but the result should only include permitted attributes.
   - Only Group H can access all fields, while Group B cannot access first name and last name.
3. Basic query integrity protection (5 pts):
   - Ensure that users can detect modified or fake query results.
4. Single data item integrity (5 pts):
   - Allow users to detect modifications in individual data items.
5. Query completeness (5 pts):
   - Enable users to detect if one or more data items are missing from a query result.
6. Basic data confidentiality protection (5 pts):
   - Protect sensitive attributes (gender and age) from exposure, either in the cloud or a local database management system.

## Getting Started
To set up and run this project, follow these steps:
1. Clone this repository to your local machine.
2. Set up a SQL database system, such as MySQL, on your local environment.
3. Create the database tables as specified in the project requirements.
4. Implement the security features and access control mechanisms.

## Project Structure
The project structure is as follows:
- `secure_db.sql`: SQL script for database setup.
- `index.php`: Main page for accessing the database.
- `register.php`: User registration page.
- `login.php`: User login page.
- `groupH.php`: Page for Group H users.
- `groupR.php`: Page for Group B users.
- `logout.php`: Logout functionality.
- `styles.css`: CSS file for styling.

## Security Features
This project includes several security features to protect sensitive data and ensure data integrity:
- User authentication and password hashing.
- Access control for different user groups (Group H and Group B).
- Query integrity protection and data item integrity checks.
- Data confidentiality protection for sensitive attributes.

## Usage
1. Access the main page (`index.php`) to interact with the secure database.
2. Register and log in as a user to access your respective user group's features.
3. Explore Group H and Group B pages to see the access control mechanisms in action.

## Contributing
We welcome contributions to this project. If you have suggestions or improvements, feel free to submit a pull request. Please follow the project's coding standards and guidelines.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.