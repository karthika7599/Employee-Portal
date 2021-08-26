read -p " Enter employee ID " empno
cat tempem | cut -d ":" -f1 | egrep "$empno" >> /dev/null
if [ $? -eq 0 ]
 then
   echo " Employee found "
   echo " DISPLAYING EMPLOYEE DETAILS "
   cat tempem | egrep "$empno"
 elif [ -z $empno ]
 then
  echo " Invalid entry - Empty field "
 else
   echo " No Employee found "
fi
   

