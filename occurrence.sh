
#OCCURANCE OF WORDS


if [ $# -eq 0 ]
then
echo " syntax is <$0> <word> <filename> "
exit 1
fi

word=$1
shift
count=0

while [ $# -ne 0 ]
do
for wd in `cat $1`
do

if [ $wd = $word ]
then
count=`expr $count + 1`
fi
done
shift
done
echo " no of occurrence of words=$count"


