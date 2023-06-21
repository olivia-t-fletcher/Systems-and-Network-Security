# !/usr/bin/bash

# Task 3 - [5 Marks]

# Write a script which creates the staff with corresponding directories and files.
# The script includes object creation and assigning permissions.
# Only an administrator can execute this script.

# Enter the Doctors directory to add
cd WellingtonClinic/Staff/Doctors

	# Create the directories for each Doctor
	mkdir -p mate1997
	mkdir -p brki2018
	mkdir -p mada1965
	mkdir -p labo1970
	
	# Add the Doctors to their respective directory/group
	groupadd doctors
	useradd -m -d /home/mate1997 -g doctors mate1997
	useradd -m -d /home/brki2018 -g doctors brki2018
	useradd -m -d /home/mada1965 -g doctors mada1965
	useradd -m -d /home/labo1970 -g doctors labo1970

	# Add the Doctors info into the log
	echo "Mary Teresa, 03/08/1953, 1997, 173 Rnd Street Kelburn, m.theresa@yahoo.com, 04528293" > mate1997/sbasicinfo.log 
	echo "Breana Kipling, 03/08/1991, 2018, 4548 River Road HugoTown Auckland, szzh8@tempmail.net, 071943668" > brki2018/sbasicinfo.log 
	echo "Mandy Dannel, 15/12/1965, 1993, 343 Norma Avenue Dayton Napier 6731, mandydl@gmail.com, 052637445" > mada1965/sbasicinfo.log 
	echo "Lance Bourne, 07/04/1970, 2002, 25 Ferguson Street Franklin Greytown 8567, lancb@outlook.com, 083736456" > labo1970/sbasicinfo.log 

	# Go back a directory back to the Staff Folder
	cd -

cd WellingtonClinic/Staff/Nurses

	# Create the directories for each Nurse
	mkdir -p lubl1980
	mkdir -p phmc2008
	
	# Add the Nurses to their respective directory/group
	groupadd nurses
	useradd -m -d /home/lubl1980 -g nurses lubl1980
	useradd -m -d /home/phmc2008 -g nurses phmc2008

	# Add the Nurses info into the log
	echo "Lucia Blakeley, 1/09/1980, 2004, 935 Massachusetts Avenue Hamilton 4562, lucyblak@outlook.com, 38347463" > lubl1980/sbasicinfo.log 
	echo "Phil McGraw, 5/04/1984, 2008, 5 Razyn Street Petone Lower Hutt 8435, philmcg@gmail.com, 02384756" > phmc2008/sbasicinfo.log 

	# Go back a directory back to the Staff Folder
	cd -

cd WellingtonClinic/Staff/Receptionists

	# Create the directories for each Receptionist
	mkdir -p ansm1974
	mkdir -p lubl1980
	mkdir -p phmc2008
	
	# Add the Receptionists to their respective directory/group
	groupadd receptionists
	useradd -m -d /home/ansm1974 -g receptionists ansm1974
	useradd -m -d /home/lubl1980 -g receptionists lubl1980
	useradd -m -d /home/phmc2008 -g receptionists phmc2008

	# Add the Receptionists info into the log
	echo "Andy Smith, 13/09/1974, 2002, 58 Foster avenue Wellington 5011, smith.andy74@gmail.com, 07284756" > ansm1974/sbasicinfo.log 
	echo "Lucia Blakeley, 1/09/1980, 2004, 935 Massachusetts Avenue Hamilton 4562, lucyblak@outlook.com, 38347463" > lubl1980/sbasicinfo.log 
	echo "Phil McGraw, 5/04/1984, 2008, 5 Razyn Street Petone Lower Hutt 8435, philmcg@gmail.com, 02384756" > phmc2008/sbasicinfo.log 

	# Go back a directory back to the Staff Folder
	cd -

cd WellingtonClinic/Staff/Administrators

	# Create the directory for the Administrator
	mkdir -p pasa1993
	
	# Add the Administrator to their respective directory/group
	groupadd administrator
	sudo useradd -m -d /home/pasa1993 -g administrator pasa1993

	# Add the Administrator info into the log
	echo "Pauline Sanderson, 08/03/1993, 1995, 2452 Randolph Street Bedford Auckland 7752, paulsand@admins.co.nz, 03747543" > pasa1993/sbasicinfo.log 

	# Go back a directory back to the Staff Folder
	cd -