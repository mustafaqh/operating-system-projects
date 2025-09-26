#this file contain the code for Problem 3:

# Create the grades directory and subdirectories for each student
mkdir -p grades/student1 grades/student2 grades/student3

# Create a file for each student inside their respective subdirectory with their grades "A", "B", and "C"
echo "A" > grades/student1/grade.txt
echo "B" > grades/student2/grade.txt
echo "C" > grades/student3/grade.txt

# Create users without passwords and with default settings
sudo adduser --disabled-password --gecos "automatic" coordinator
sudo adduser --disabled-password --gecos "automatic" ta1
sudo adduser --disabled-password --gecos "automatic" ta2
sudo adduser --disabled-password --gecos "automatic" ta3
sudo adduser --disabled-password --gecos "automatic" student1
sudo adduser --disabled-password --gecos "automatic" student2
sudo adduser --disabled-password --gecos "automatic" student3

# Declare an array of group names and create them
declare -a groups=("coordinators" "taGroup" "studentGroup")
for group in "${groups[@]}"; do
  sudo groupadd "$group"
done

# Add the coordinator to the coordinators group
sudo usermod -a -G coordinators coordinator

# Add the TAs to taGroup
sudo usermod -a -G taGroup ta1
sudo usermod -a -G taGroup ta2
sudo usermod -a -G taGroup ta3

# Add the students to studentGroup
sudo usermod -a -G studentGroup student1
sudo usermod -a -G studentGroup student2
sudo usermod -a -G studentGroup student3

# Change the ownership of the entire 'grades' directory to the 'coordinator'
sudo chown -R coordinator:coordinators grades

# Change the group of each student's directory to 'taGroup'
sudo chgrp -R taGroup grades/student1
sudo chgrp -R taGroup grades/student2
sudo chgrp -R taGroup grades/student3

# Set the directory permissions
sudo chmod 755 grades
sudo chmod 755 grades/student1
sudo chmod 755 grades/student2
sudo chmod 755 grades/student3

# Set file permissions for the 'grade.txt' files
sudo chmod 664 grades/student1/grade.txt
sudo chmod 664 grades/student2/grade.txt
sudo chmod 664 grades/student3/grade.txt

echo "Setup complete. Ownership and permissions have been set."
