# Konstantinos K. Bourdakos
# Athens - Greece Feb. 2022
# Grab IP Info.

clear

echo
echo =============================================
echo = Πληκτρολογήστε την IP που σας ενδιαφέρει. =
echo =============================================
echo

# Εισαγωγή IP από τον Χρήστη

read -p ":: " str_ip

echo

# Δημιουργία Regular Exression

regX='([1-9]?[0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])'

   if [[ $str_ip =~ ^$regX\.$regX\.$regX\.$regX$ ]]; then

      #Αποδοχή & TOKEN
      curl ipinfo.io/$str_ip?token=57a61ab1d0b3cb

   else

      #Απόρριψη
      echo "Η IP [" $str_ip "] που δηλώσατε δεν έχει σωστή μορφή!"

   fi

echo
echo
