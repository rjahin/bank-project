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
            read -p "Enter the amount to deposit: " amount
            balance=$((balance+amount))
            echo "Deposited $amount."
            echo "New balance: $balance"
            echo " "
            ;;
        2) 
            read -p "Enter amount to withdraw: " amount
            if [[ $balance -ge $amount ]]; then
                balance=$((balance-amount))
                echo "Withdraw $amount."
                echo "New balance: $balance"
                echo " "
            else
                echo "Insufficient funds!"
                echo " "
            fi
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

