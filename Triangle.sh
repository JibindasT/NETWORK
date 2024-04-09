#DISPLAY TYPE OF TRIANGLE



if [ $# -ne 0 ]
then
echo "SYNTAX IS  <$0> <sides>"
exit 1
fi


if [ $# -eq 0 ]
then
echo " Enter first side : "
read x
echo " Enter second side : "
read y
echo " Enter third side : "
read z
fi

if [ `expr $x + $y` -le $z -o `expr $y + $z` -le $x -o `expr $x + $z` -le $y ]
then
echo " $x $y $z are not sides of triangles "
exit 2
else
echo " $x $y $z They are sides of triangle "
fi
  
if [ $x -eq $y -a $y -eq $z ]
then
echo "Equilatteral triangle"
elif [ $x -eq $y -o $y -eq $z -o $z -eq $x ]
then
echo " Isosceles triangle"
else
x2=`expr $x \* $x`
y2=`expr $y \* $y`
z2=`expr $z \* $z`
if [ `expr $x2 + $y2` -eq $z2 ]
then
echo "Right angled triangle"
else
echo "Scalene triangle"
fi
fi
 

 



