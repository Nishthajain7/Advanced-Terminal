echo "Hello, World!"

# Print variables
name="Rohit"
echo "Hello, $name"

# Print without a newline using -n
echo -n "Processing..."

# \n for new line
echo -e "Line1\nLine2"
# \t for Tab
echo -e "\tTab"

# Redirect output to another file
echo "Log entry" > logfile.txt
echo "Another entry" >> logfile.txt

# Predefined variables
echo $HOME
echo $PWD
