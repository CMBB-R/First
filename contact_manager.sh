#!/bin/bash

# File to store contacts
CONTACTS_FILE="contacts.txt"

# Function to display the menu
display_menu() {
    clear
    echo "Contact Management System"
    echo "1. Create a New Contact"
    echo "2. Search Contacts"
    echo "3. Help"
    echo "4. Exit"
    echo "Enter your choice:"
}

# Function to create a new contact
create_contact() {
    read -p "Enter First Name: " first_name
    read -p "Enter Last Name: " last_name
    read -p "Enter Email: " email
    read -p "Enter Phone Number: " phone

    # Append the contact to the file
    echo "$first_name - $last_name - $email - $phone" >> "$CONTACTS_FILE"
    echo "Contact added successfully!"
}

# Function to search for contacts
search_contact() {
    read -p "Enter search query: " query
    grep -i "$query" "$CONTACTS_FILE"
}

# Main loop
while true; do
    display_menu

    read choice
    case "$choice" in
        1)
            create_contact
            ;;
        2)
            search_contact
            ;;
        3)
            echo "Contact Management System Help:"
            echo "You can create a new contact by choosing option 1."
            echo "You can search for contacts by choosing option 2."
            echo "To exit the program, choose option 4."
            echo "Press Enter to continue..."
            read
            ;;
        4)
            echo "Exiting Contact Management System."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done


