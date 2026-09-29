#!/bin/bash

balance=1000
while true; do
    echo "------------------------------"
    echo "Welcome to Simple Bank"
    echo "1. Deposit"
    echo "2. Withdraw"
    echo "3. Check Balance"
    echo "4. Exit"
    echo "------------------------------"
    read -p "Choose an option: " option
    echo " "

    case $option in
        1) 
            echo "Deposit Section"
            echo " "
            ;;
        2) 
            echo "Withdraw Section"
            echo " "
            ;;
        3)
            echo "Your current balance: $balance"
            echo " "
            ;;
        4) 
            echo "Goodbye!"
            echo " "
            exit;;
        *)
            echo "Invalid Option!"
            echo "Please choose a valid option."
            echo " "
            ;;
        esac
done

