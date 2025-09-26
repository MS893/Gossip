# The Gossip Project

A simple command-line (CLI) application built with Ruby to manage a collection of "gossips".

## Features

*   **Create a gossip**: Add a new gossip with an author and content.
*   **List all gossips**: Display all the gossips stored in the database.
*   **Delete a gossip**: Remove a specific gossip from the list.
*   **Persistent Storage**: Gossips are saved to a `gossip.csv` file.

## Prerequisites

*   Ruby
*   Bundler

## Getting Started

1.  **Clone the repository** (or make sure you are in the project directory).

2.  **Install dependencies**:
    Open your terminal and run:
    ```bash
    bundle install
    ```

3.  **Run the application**:
    ```bash
    ruby app.rb
    ```

    You will be presented with a menu to interact with the application.

## Project Structure

The project follows a basic MVC (Model-View-Controller) pattern:

*   `app.rb`: The main entry point of the application. It initializes and starts the router.
*   `lib/`: Contains the core logic of the application.
    *   `router.rb`: Handles user input from the main menu and calls the appropriate controller actions.
    *   `controller.rb`: Orchestrates the application flow, interacting with the model and the view.
    *   `view.rb`: Manages all display-related tasks and gets user input from the terminal.
    *   `gossip.rb`: The **Model**. It represents a single gossip and handles all database interactions (reading from and writing to the CSV file).
*   `db/`: Contains the database.
    *   `gossip.csv`: A CSV file used as a simple database to store the gossips.
