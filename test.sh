echo "Running tests..."
echo

echo "*****"
echo
echo "Person..."
output_person=$(./person < test/input_person.txt)
echo $output_person
expected_output_person="Name: Minerva
Age: 55
Country: Scotland"| tr -d '\r'

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi


if [[ $output_person == *$expected_output_person* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_person' but got: $output_person"
  exit 1
fi

echo "*****"
echo
echo "Car..."
output_car=$(./car < test/input_car.txt)
echo $output_car

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

expected_output_car="Company: LandRover
Model: Defender
Year: 2000"| tr -d '\r'


if [[ $output_car == *$expected_output_car* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_car' but got: $output_car"
  exit 1
fi

echo
echo "*****"
echo
echo "All tests passed."

exit 0
