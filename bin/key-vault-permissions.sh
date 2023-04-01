#!/bin/sh

# Utility for azure development on KFC Integrations team

user='mxh3203@yum.com'
# az login -u $user # login if not already logged in
az account list --all
az account set --subscription "KFC US - Digital Ordering Sandbox"
az ad signed-in-user show

az keyvault set-policy --name kfc-deusm-menu-kv --upn $user --secret-permissions list get set
az keyvault set-policy --name kfc-dwusm-menu-kv --upn $user --secret-permissions list get set
az keyvault set-policy --name kfc-dglob-menu-kv --upn $user --secret-permissions list get set

az keyvault set-policy --name kfc-qeusm-menu-kv --upn $user --secret-permissions list get set
az keyvault set-policy --name kfc-qwusm-menu-kv --upn $user --secret-permissions list get set
az keyvault set-policy --name kfc-qglob-menu-kv --upn $user --secret-permissions list get set

az keyvault set-policy --name kfc-deusm-order-kv --upn $user --secret-permissions list get set
az keyvault set-policy --name kfc-dwusm-order-kv --upn $user --secret-permissions list get set
az keyvault set-policy --name kfc-dglob-order-kv --upn $user --secret-permissions list get set

az keyvault set-policy --name kfc-qeusm-order-kv --upn $user --secret-permissions list get set
az keyvault set-policy --name kfc-qwusm-order-kv --upn $user --secret-permissions list get set
az keyvault set-policy --name kfc-qglob-order-kv --upn $user --secret-permissions list get set
