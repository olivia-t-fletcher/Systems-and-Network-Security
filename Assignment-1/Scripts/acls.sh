#!/usr/bin/bash

# Task 5 - [15 marks]

# Create ACLs for staff permissions as according to the determined access matrix

# Enter the scripts directory and set permissions
cd WellingtonClinic/scripts

	# Setting the neccessary permissions for each script file
	chmod -wx file-system-setup.sh
	chmod -wx staff-create.sh
	chmod -rwx acls.sh
	// chmod -wx register-patient.sh

	# Setting the administrator Pauline full permissions to execute scripts
	setfacl -m u:pasa1993:rwx file-system-setup.sh
	setfacl -m u:pasa1993:rwx staff-create.sh
	setfacl -m u:pasa1993:rwx acls.sh

	// Go back a directory
	cd -

# Enter the Doctors directory
cd WellingtonClinic/Staff/Doctors

	# Set permissions for admin to rwx all Doctor .log files
	setfacl -R -m u:pasa1993:rwx /mate1997/sbasicinfo.log
	setfacl -R -m u:pasa1993:rwx /brki2018/sbasicinfo.log
	setfacl -R -m u:pasa1993:rwx /mada1965/sbasicinfo.log
	setfacl -R -m u:pasa1993:rwx /labo1970/sbasicinfo.log

	# Set permissions for everyone else to write and execute .log files
	chmod -wx /mate1997/sbasicinfo.log
	chmod -wx /brki2018/sbasicinfo.log
	chmod -wx /mada1965/sbasicinfo.log
	chmod -wx /labo1970/sbasicinfo.log

	cd -

# Nurses
cd WellingtonClinic/Staff/Nurses

	# Set permissions for admin to rwx all Nurses .log files
	setfacl -R -m u:pasa1993:rwx /lubl1980/sbasicinfo.log
	setfacl -R -m u:pasa1993:rwx /phmc2008/sbasicinfo.log

	# Set permissions for everyone else to write and execute .log files
	chmod -wx /lubl1980/sbasicinfo.log
	chmod -wx /phmc2008/sbasicinfo.log

	cd -

# Receptionists
cd WellingtonClinic/Staff/Receptionists

	# Set permissions for admin to rwx all receptionists .log files
	setfacl -R -m u:pasa1993:rwx /ansm1974/sbasicinfo.log
	setfacl -R -m u:pasa1993:rwx /lubl1980/sbasicinfo.log
	setfacl -R -m u:pasa1993:rwx /phmc2008/sbasicinfo.log

	# Set permissions for everyone else to write and execute .log files
	chmod -wx /ansm1974/sbasicinfo.log
	chmod -wx /lubl1980/sbasicinfo.log
	chmod -wx /phmc2008/sbasicinfo.log

	cd -

# Administrators
cd WellingtonClinic/Staff/Administrators

	# Set permissions for admin to rwx admin .log file
	setfacl -R -m u:pasa1993:rwx /pasa1993/sbasicinfo.log

	# Set permissions for everyone else to write and execute .log files
	chmod -wx /pasa1993/sbasicinfo.log

	cd -
