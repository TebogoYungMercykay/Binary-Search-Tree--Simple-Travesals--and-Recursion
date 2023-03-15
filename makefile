default:
	javac *.java

run:
	java App

clean:
	rm -f *.class
	reset
	clear

tar:
	rm -f *.class *.tar.gz
	tar -cvz BST.java makefile -f uBST.tar.gz

unzip:
	tar -zxvf *.tar