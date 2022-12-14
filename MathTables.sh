#!/bin/bash
clear
while true; do
echo "/////////////¯¯??¯??'??'??'??'??)??)?? '??\??\=(•?`?´)=o/??/'?? ? ??//////////////////"
echo "////////////////////Crazy Math Tables!//////////////////"
echo "////////////////////////////////////////////////////////"
echo "Enter an Operator!"
echo "+ = Addition"
echo "- = Subtraction"
echo "* = Multiplication"
echo "/ = Division"
echo "^ = Exponent"
read Op
if [[ $Op == "+" || $Op == "-" || $Op == "*" || $Op == "/" || $Op == "^" ]]; then
echo "Enter a number between 1 and 15!"
read Number
if [ $Number -ge 16 ];then
        echo "Number too high you silly guy!!! Choose between 1 and 15 next time!!!"
        echo "////////////////¯¯??¯??'??'??'??'??)??)?? '??\??\=(•?`?´)=o/??/'?? ? ??////////////////////////////"
        echo "/////////////////Math Tables Script Complete!////////////////////////"
        echo "///////////Run Again to Generate a different table!//////////////////"
elif [ $Number -le 0 ];then
        echo "///Number too low you fool!!! Choose between 1 and 15 next time!!!///"
        echo "////////////////¯¯??¯??'??'??'??'??)??)?? '??\??\=(•?`?´)=o/??/'?? ? ??////////////////////////////"
        echo "/////////////////Math Tables Script Complete!////////////////////////"
        echo "///////////Run Again to Generate a different table!//////////////////"
else
case $Op in
\+)     x=1
        while [ $x -le 15 ]
        do
        echo "$Number + $x =`expr $Number \+ $x`"
        x=$(( $x + 1 ))
        done
        ;;
\-) for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
        do
        echo "$Number - $i =`expr $Number \- $i`"
        done
        ;;
\/) for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
        do
        echo "$Number / $i =`expr $Number \/ $i`"
        done
        ;;
\^) for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
        do
        echo "$Number ^ $i = `expr $(($Number**$i))`"
        done
        ;;
\*) for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
        do
        echo "$Number * $i =`expr $Number \* $i`"
        done
        ;;
esac
echo "/////////////¯¯??¯??'??'??'??'??)??)?? '??\??\=(•?`?´)=o/??/'?? ? ??//////////////////"
echo "//////////////Math Tables Script Complete!//////////////"
echo "////////Run Again to Generate a different table!////////"
fi
else
echo "////////Choose a valid operator you silly guy!!!////////"
continue
fi
break
done