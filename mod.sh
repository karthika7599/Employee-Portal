echo " MODIFY EMPLOYEE DETAILS"
read -p " Enter employee ID " empno
cat tempem | cut -d ":" -f1 | egrep "^$empno$" >> /dev/null
if [ $? -eq 0 ]
 then
   echo " Employee found "
   read -p " Enter employee name " ename
   co=$( echo $ename | wc -c )
   if [ -z "$ename" ]
      then
      echo " Invalid entry - Empty field "
      exit
   elif [ $co -gt 26 ]
     then
     echo " Invalid entry - Less than 25 characters required"
   else
   echo $ename | egrep "^[a-zA-Z][a-zA-Z ]+$" >> /dev/null
    if [ $? -eq 0 ]
     then
       echo " Valid Entry "
     else
       echo " Invalid entry - Name should contain only alphabets "
       exit
     fi
   fi
   read -p " Enter employee salary " esal
   if [ -z $esal ]
     then
     echo " Invalid entry - Empty field "
     exit
   else
   echo $esal | egrep "^[0-9].+$" >> /dev/null
    if [ $? -eq 0 ]
     then
      echo " Valid Entry "
     else
      echo "Invalid entry - Salary should contain only numbers "
      exit
     fi
   fi
   read -p " Enter employee designation " edsg
   cu=$( echo $edsg | wc -c )
   if [ -z $edsg ]
     then
     echo " Invalid entry - Empty field "
     exit
   elif [ $cu -gt 4 ]
     then
      echo " Invalid entry - Less than 3 characters required "
      exit
   else
   echo $edsg | egrep "^[a-zA-Z]+$" >> /dev/null
      if [ $? -eq 0 -a ${#edsg} -eq 3 ]
        then
          echo " Valid Entry "
      else
      echo " Invalid entry - Designation should be 3 characters long and must contain only alphabets "
      exit
      fi
    fi
elif [ -z $empno ]
 then
  echo " Invalid entry - Empty field "
  exit 
else
   echo " No Employee found "
fi
cp tempem t
ssh-add | grep -v "$empno" t > tempem 
echo $empno:$ename:$esal:$edsg >> tempem
