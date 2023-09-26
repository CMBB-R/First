#!/bin/bash

# File to store contacts
CONTACTS_FILE="contacts.txt"

# Function to display the menu
display_menu() {
    echo "Contact Management System"
    echo "1. Create a New Contact"
    echo "2. Search Contacts"
    echo "3. Help"
    echo "4. Exit"
}

# Function to create a new contact
create_contact() {
    read -p "Enter First Name: " first_name
    read -p "Enter Last Name: " last_name
    read -p "Enter Email: " email
    read -p "Enter Phone Number: " phone

    # Append the contact to the file
    echo "$first_name - $last_name - $email - $phone" >> "$CONTACTS_FILE"
    echo "Contact added"
}

# Function to search for contacts
search_contact() {
    search_contact() {
    read -p "Enter search query: " query
    grep -i "$query" "$CONTACTS_FILE"
    echo "Press Enter to return to the main menu..."
    read  
    
} 
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
            echo "Help:"
            echo "1- You can create a new contact"
            echo "2- You can search for contacts"
            echo "4- To exit the program"
            echo "Press Enter to continue..."
            read
            ;;
        4)
            echo "Exiting"
            exit 0
            ;;
        *)
            echo "Invalid option. Select one of the nnumbers: 1 - 2 - 3 - 4."
            ;;
    esac
done


