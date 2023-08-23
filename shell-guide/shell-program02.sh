#!/bin/bash


# -z  the length of the string is zero
# -n  the length of the string is greater than zero

# test-string: evaluate the value of a string

ANSWER="maybe"
if [[ -z $ANSWER ]]
then
  echo "There is no answer." >&2
  exit 1
fi

if [[ "$ANSWER" = "Yes" ]]
then
  echo "The answer is YES."
elif [[ "$ANSWER" = "no" ]]
then
  echo "The Answer is NO"
elif [[ "$ANSWER" = "maybe" ]]
then
  echo "The Answer is MAYBE"
else
  echo "The Answer is UNKNOWN."

fi