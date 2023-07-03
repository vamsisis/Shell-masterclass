#!/bin/bash

# This Script displays various information to the screen.
echo 'Hello'
 
# Assign a Value to the variable 
WORD='script'

# Display that Value using the variable 
echo "$WORD"

# Demonstrate that single quotes cause Variables to NOT get expanded
echo '$WORD'

# Combine the Variable with hard-coded text.
echo "This is shell $WORD"

# Display the contents of the variable using alternative syntax.
echo "This is shell ${WORD}"

# Append the text to the variable 
echo "${WORD}ing is fun!"

# Show how NOT to append text to a variable 
# This doesn't work:
echo "$WORDing is fun!"


# Create a new Variable 
ENDING='ed'

# Combine the two Variables
echo "This is ${WORD}${ENDING}."

# Change the Value stored in the Ending Variable. (Reassignment)
ENDING='ing'
echo "This is ${WORD}${ENDING}"

# Reassign value to ENDING.
ENDING='s'
echo "you are going to write many ${WORD}${ENDING}"