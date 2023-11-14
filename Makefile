CC = g++

person: person.cpp
	g++ person.cpp -o person

car: car.cpp
	g++ car.cpp -o car

clean:
	rm person car

test: person car 
	bash test.sh
