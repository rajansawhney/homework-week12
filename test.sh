echo "Running tests..."
echo

echo "*****"
echo
echo "Winner of the election..."
output_election=$(./election < test/input_election.txt)
# echo ${output_election} | tr -d '\t' | tr -d '\n'
# output_election=${output_election//[[:space:]]/}
echo $output_election

expected_output_election="
Peter                   30              18%
Roy                     20              12%
Ali                     60              37%
Hales                   40              25%
John                    10              6%
The winner is Ali"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi


if [[ ${output_election//[[:space:]]/} == *${expected_output_election//[[:space:]]/}* ]] ; then
  echo "Pass: Output is correct"
else
  echo -e "Expected = $expected_output_election"
  echo -e "but got:"
  echo -e "$output_election"
  exit 1
fi

echo
echo "*****"
echo
echo "All tests passed."

exit 0
