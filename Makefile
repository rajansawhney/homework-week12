CC = g++

election: election.cpp
	g++ election.cpp -o election

clean:
	rm election 

test: election  
	bash test.sh
