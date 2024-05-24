# Sql-Forms

This project is a web-based application designed to manage and display reviews and user information. The project consists of multiple components including fetching data from APIs, displaying tables, and providing functionalities to add, edit, and delete reviews. It is built using React and Java for the backend services.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [File Structure](#file-structure)
- [Features](#features)
- [Contributing](#contributing)
- [License](#license)

## Installation

To set up this project locally, follow these steps:

1. **Clone the repository:**
    ```sh
    git clone <https://github.com/vokenboy/sql-forms>
    cd </sql-forms>
    ```

2. **Install dependencies:**
    ```sh
    npm install
    ```

3. **Start the development server:**
    ```sh
    npm start
    ```

4. **Run the backend services (Java):**
   - Ensure you have Java installed.
   - Navigate to the directory containing `DatabaseApplication.java`.
   - Compile and run the Java application:
     ```sh
     javac DatabaseApplication.java
     java DatabaseApplication
     ```

## Usage

After starting the development server, open your browser and navigate to `http://localhost:3000` to view the application.

## File Structure

Here is a brief overview of the key files in this project:

- **`main.jsx`**: The main component that renders the header and body of the application.
- **`f1.jsx`**: Manages user data, including fetching, displaying, and editing user reviews.
- **`ataskaita.jsx`**: Displays a detailed report of reviews and associated items.
- **`userTable.css`**: Contains the CSS styles for the tables and buttons used in the application.
- **`getTotalDescriptionCount.ts`**: Fetches the total description count from the backend API.

## Features

- **User Management**:
  - Fetch user data and their associated reviews.
  - Edit user details and reviews.
  - Delete reviews.
  - Add new reviews.

- **Review Reporting**:
  - Display detailed reports of reviews.
  - Show associated items and their descriptions.
  - Calculate and display total description counts.

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes. Ensure your code follows the project's coding standards and include tests for any new functionality.

## License

This project is licensed under the MIT License. See the LICENSE file for more information.
