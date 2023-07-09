# How do you check if a string is empty or null in shell script?

# 1. The = and != operators
str="hello"
if [[ $str == "" ]]; then
  echo "String is Empty "
else
  echo "String is not Empty"
fi

# 2. The [[ ]] construct
str1="Hi"
if [[ -z $str1 ]]; then
  echo "String is Empty"
  else
  echo "String is Not Empty"
fi

# 3. The -z and -n operators

str2=''
if [ -z $str2 ]; then
  echo "your string is Empty"
else
  echo "Your string is not Empty"
fi 