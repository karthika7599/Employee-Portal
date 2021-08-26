#!/bin/bash
while( true )
do
echo "	WELCOME TO EMPLOYEE PORTAL "
echo " Press 1 for Adding Employee Details "
echo " Press 2 for modifying Employee Details "
echo " Press 3 for displaying Employee Details "
echo " Press 4 to exit "
read ch
case $ch in
     1)
         sh add.sh
         #break
         ;;
     2)
         sh mod.sh
         #break
         ;;
     3) 
         sh disp.sh
         #break
         ;;
     4)
         exit
         break 
         ;;
     *)
         echo "Wrong entry "
         ;;
esac
done
