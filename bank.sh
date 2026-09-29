#!/bin/bash

balance=1000
total_deposit=0
total_withdraw=0
while true; do
    echo "------------------------------"
    echo "Welcome to Simple Bank"
    echo "1. Deposit"
    echo "2. Withdraw"
    echo "3. Check Balance"
    echo "4. Exit"
    echo "5. Statement"
    echo "------------------------------"
    read -p "Choose an option: " option
    echo " "

    case $option in
        1) 
            read -p "Enter the amount to deposit: " amount
            balance=$((balance+amount))
            total_deposit=$((total_deposit+amount))
            echo "Deposited $amount."
            echo "New balance: $balance"
            echo " "
            ;;
        2) 
            read -p "Enter amount to withdraw: " amount
            if [[ $balance -ge $amount ]]; then
                balance=$((balance-amount))
                total_withdraw=$((total_withdraw+amount))
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
        5) 
            echo "------------------------------"
            echo "      Account Statement       "
            echo "------------------------------"
            echo "Total Deposit   : $total_deposit"
            echo "Total Withdraw  : $total_withdraw"
            echo "Current amount  : $balance"
            echo "------------------------------"
            echo " "
            ;;
        *)
            echo "Invalid Option!"
            echo "Please choose a valid option."
            echo " "
            ;;
        esac
done

