echo " ADD EMPLOYEE DETAILS"
empno="1000"
touch tempem
read -p " enter employee name " ename
co=$( echo $ename | wc -c )
if [ -z "$ename" ]
 then
  echo " Invalid entry - Empty field "
  exit
elif [ $co -gt 26 ]
  then
   echo " Invalid entry - Less than 25 characters allowed "
   exit
else
   echo $ename |  egrep "^[a-zA-Z][a-zA-Z ]+$"  >> /dev/null
   if [ $? -eq 0 ]
     then 
       echo " Valid Entry "
     else
       echo " Invalid entry - Name should contain only alphabets "
       exit
   fi
fi
read -p " enter employee salary " esal
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
read -p " enter employee designation " edsg
cu=$( echo $edsg | wc -c )
if [ -z $edsg ]
 then
  echo " Invalid entry - Empty field "
  exit
elif [ $cu -gt 4 ]
  then
  echo "Invalid entry - Equal to or Less than 3 characters allowed "
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
val=$(cat tempem | wc -l)
#echo $val
#echo $(expr $empno + $val)
echo " ADDED SUCCESSFULLY !! " $(expr $empno + $val):$ename:$esal:$edsg
echo $(expr $empno + $val):$ename:$esal:$edsg >> tempem

