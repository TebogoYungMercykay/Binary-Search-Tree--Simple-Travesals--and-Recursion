________________________________________________________________________________________
#                    Binary Search Tree in Java                               
________________________________________________________________________________________
 ## Description
 
 - The Standard Binary Search Tree is a node-based binary tree data structure which has the following properties:
	- The left subtree of a node contains only nodes with keys lesser than the node’s key.
	- The right subtree of a node contains only nodes with keys greater than the node’s key.
	- The left and right subtree each must also be a binary search tree.

 - The Mirrored Binary Search Tree is the Opposite of the Standard Tree
 - Example Trees
	<img alt="Example Trees" src="">

- ### Data Structure
	 - Binary Search Tree

- ### Methods
	 - Recursive Traversal
	 - Standard Traversal
________________________________________________________________________________________

## UML Diagrams And Functions
<img alt="UML Diagrams And Functions" src="">
________________________________________________________________________________________

## Requirements before running codes:
- Install an IDE that compiles and runs Java codes. Recommendation VS Code
- How to setup WSL Ubuntu terminal shell and run it from Visual Studio Code: 
 visit: https://www.youtube.com/watch?v=fp45HpZuhS8&t=112s
- How to Install Java JDK 17 on Windows 11: https://www.youtube.com/watch?v=ykAhL1IoQUM&t=136s
- #### Installing Oracle JDK on Windows subsystem for Linux.
	- Run WSL as Administrator
	- set -ex
	- NB: Update links for other JDK Versions 
	- export JDK_URL=http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
	- export UNLIMITED_STRENGTH_URL=http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip
	- wget --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" ${JDK_URL}
	- Extract the archive: tar -xzvf jdk-*.tar.gz
	- Clean up the tar: rm -fr jdk-*.tar.gz
	- Make the jvm dir: sudo mkdir -p /usr/lib/jvm
	- Move the server jre: sudo mv jdk1.8* /usr/lib/jvm/oracle_jdk8
	- Install unlimited strength policy: wget --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" ${UNLIMITED_STRENGTH_URL}
	- unzip jce_policy-8.zip
	- mv UnlimitedJCEPolicyJDK8/local_policy.jar /usr/lib/jvm/oracle_jdk8/jre/lib/security/
	- mv UnlimitedJCEPolicyJDK8/US_export_policy.jar /usr/lib/jvm/oracle_jdk8/jre/lib/security/
	- sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/oracle_jdk8/jre/bin/java 2000
	- sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/oracle_jdk8/bin/javac 2000
	- sudo echo "export J2SDKDIR=/usr/lib/jvm/oracle_jdk8 export J2REDIR=/usr/lib/jvm/oracle_jdk8/jre export PATH=$PATH:/usr/lib/jvm/oracle_jdk8/bin:/usr/lib/jvm/oracle_jdk8/db/bin:/usr/lib/jvm/oracle_jdk8/jre/bin export JAVA_HOME=/usr/lib/jvm/oracle_jdk8 export DERBY_HOME=/usr/lib/jvm/oracle_jdk8/db" | sudo tee -a /etc/profile.d/oraclejdk.sh
_______________________________________________________________________________________

 ## Makefile
 ##### NB: A makefile Is Included to compile and run the codes on the terminal with the following commands:=
- make clean
- make
- make run

```Java
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
```
_______________________________________________________________________________________
