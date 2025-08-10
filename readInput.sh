echo -n "Enter Your age: "
read age

if [ "$age" -ge 18 ]
then
    echo "You are eligible"
else
    echo "You are not eligible"
fi
