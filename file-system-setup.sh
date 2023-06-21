#!/bin/bash

# Task  2 - [5 marks]

# Write a script [file-system-setup.sh] which creates a file system directory structure
# Only an admin can execute this script

# Make the clinic directory and enter it
mkdir WellingtonClinic
	cd WellingtonClinic

	# Make the necessary directories for the clinic
	mkdir Staff
	mkdir Patients
	mkdir scripts

		# Enter the staff directories and create the necessary directories for staff
		cd Staff
		mkdir Administrators
		mkdir Doctors
		mkdir Nurses
		mkdir Receptionists
		cd

	# Copy the script file into the clinics scripts folder
	cp file-system-setup.sh WellingtonClinic/scripts
	
		