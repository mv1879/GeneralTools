####Script in under construction and nowhere near ready

##create table graft_sn_customers ( id int,name text, telegram_handle text, date_started DATE NOT NULL DEFAULT CURRENT_DATE, email text);

##run with Jenkins or similar

#NAME="${name}"
#TELEGRAM_HANDLE="$telegram_handle"
#EMAIL_ADDRESS="$email_address"
# Add too snsetup function/script to be actioned on creation or execute script on local DB server and execute below function
#function NewGraftCustomer()
# {
#   psql -U postgres -d test_db -c "insert into graft_sn_customers (name,telegram_handle,email) values ("\'$NAME\'","\'$TELEGRAM_HANDLE\'","\'$EMAIL_ADDRESS\'")"
#}

#NewGraftCustomer $NAME $TELEGRAM_HANDLE $EMAIL_ADDRESS


#create table test_table ( id int,first_name text, last_name text, telegram_handle text, date_started DATE NOT NULL DEFAULT CURRENT_DATE, email text);


#insert into test_table (first_name,last_name,telegram_handle) values ('Fez','Surname','@fezz29');


#bash

#psql -U postgres -d database_name -c "SELECT *  FROM test_db"


#Example:

#CREATE TABLE documents (
# document_id serial PRIMARY KEY,
# header_text VARCHAR (255) NOT NULL,
# posting_date DATE NOT NULL DEFAULT CURRENT_DATE
#);


#random user with no access
#sudo -u postgres -H -- psql -d test_db -c "SELECT *  FROM test_table"

#as user with access -U = user logged in as
#in example startdate cloumn will a day value eg, 24

# $1 = first variable passed by 

function EMAIL_USER
{
    echo "TEST_FUNCTION $1"
}

SYSTEMDATE=\'$(date +'%d-%m-%Y')\'
SYSTEMDAY=`date +'%d'`
QUERY_RESULTS=`psql -U postgres -d test_db -c "SELECT * FROM test_table"`
# QUERY_RESULTS=`psql -U postgres -d test_db -c "SELECT EXTRACT(DAY FROM TIMESTAMP 'choice1_1')";`
# {printf "%0s ", $3} = $3 is equal to column 3 for example, this change with database changes = TEST!

#column 3 ($3) equal to email
choice1=`printf "$QUERY_RESULTS" | awk 'FNR == 3 {printf "%0s ", $3}'`
#Column 9 ($9) equal to date or "DAY"
choice1_1=`printf "$QUERY_RESULTS" | awk 'FNR == 3 {printf "%0s ", $9}'`
#sort for date (day)
choice1_2=`echo $choice1_1 | cut -d'-' -f1`
#column 3 ($3) equal to email
choice2=`printf "$QUERY_RESULTS" | awk 'FNR == 4 {printf "%0s ", $3}'`
#Column 9 ($9) equal to date or "DAY"
choice2_1=`printf "$QUERY_RESULTS" | awk 'FNR == 4 {printf "%0s ", $9}'`
#sort for date (day)
choice2_2=`echo $choice2_1 | cut -d'-' -f1`
#column 3 ($3) equal to email
choice3=`printf "$QUERY_RESULTS" | awk 'FNR == 5 {printf "%0s ", $9}'`
#Column 9 ($9) equal to date or "DAY"
choice3_1=`printf "$QUERY_RESULTS" | awk 'FNR == 5 {printf "%0s ", $9}'`
#sort for date (day)
choice3_2=`echo $choice3_1 | cut -d'-' -f1`
#column 3 ($3) equal to email
#choice4=`printf "$QUERY_RESULTS" | awk 'FNR == 6 {printf "%0s ", $9}'`
#Column 9 ($9) equal to date or "DAY"
#choice4_1=`printf "$QUERY_RESULTS" | awk 'FNR == 6 {printf "%0s ", $9}'`
#choice5=`printf "$QUERY_RESULTS" | awk 'FNR == 7 {printf "%0s ", $9}'`
#choice5_1=`printf "$QUERY_RESULTS" | awk 'FNR == 7 {printf "%0s ", $9}'`
#choice6=`printf "$QUERY_RESULTS" | awk 'FNR == 8 {printf "%0s ", $9}'`
#choice7=`printf "$QUERY_RESULTS" | awk 'FNR == 9 {printf "%0s ", $9}'`
#choice8=`printf "$QUERY_RESULTS" | awk 'FNR == 10 {printf "%0s ", $9}'`
#choice9=`printf "$QUERY_RESULTS" | awk 'FNR == 11 {printf "%0s ", $9}'`
#choice10=`printf "$QUERY_RESULTS" | awk 'FNR == 12 {printf "%0s ", $9}'`
#choice11=`printf "$QUERY_RESULTS" | awk 'FNR == 13 {printf "%0s ", $9}'`
#choice12=`printf "$QUERY_RESULTS" | awk 'FNR == 14 {printf "%0s ", $9}'`
#choice13=`printf "$QUERY_RESULTS" | awk 'FNR == 15 {printf "%0s ", $9}'`
#choice14=`printf "$QUERY_RESULTS" | awk 'FNR == 16 {printf "%0s ", $9}'`
#choice15=`printf "$QUERY_RESULTS" | awk 'FNR == 18 {printf "%0s ", $9}'`
#choice16=`printf "$QUERY_RESULTS" | awk 'FNR == 19 {printf "%0s ", $9}'`
#choice17=`printf "$QUERY_RESULTS" | awk 'FNR == 20 {printf "%0s ", $9}'`

echo "choice1: $choice1"
echo "choice1_1: $choice1_1"

#execute EMAIL_USER if day value is same
#consider [ "$SYSTEMDAY-$choice1_2" -lt "4" ]; = payment date is less than 4 days away 

	if [ "$SYSTEMDAY" == "$choice1_2" ];
	then
	EMAIL_USER $choice1
	fi

	if [ "$SYSTEMDAY" == "$choice2_2" ];
	then
	EMAIL_USER $choice2
	fi



#Get certain columns
#choice2=`printf "$QUERY_RESULTS" | awk 'FNR == 3 {printf "%0s %1s ", $3 , $9}'`

#date +'%Y-%m-%d'`

#Get day from column

#SELECT EXTRACT(DAY FROM TIMESTAMP 'choice1_1');

##choice2=`printf "$QUERY_RESULTS" | awk 'FNR == 4 {printf "%0s %1s ", $3 , $9}'`
##choice3=`printf "$QUERY_RESULTS" | awk 'FNR == 5 {printf "%0s %1s ", $3 , $9}'`
##choice4=`printf "$QUERY_RESULTS" | awk 'FNR == 6 {printf "%0s %1s ", $3 , $9}'`
##choice5=`printf "$QUERY_RESULTS" | awk 'FNR == 7 {printf "%0s %1s ", $3 , $9}'`
##choice6=`printf "$QUERY_RESULTS" | awk 'FNR == 8 {printf "%0s %1s ", $3 , $9}'`
##choice7=`printf "$QUERY_RESULTS" | awk 'FNR == 9 {printf "%0s %1s ", $3 , $9}'`
##choice8=`printf "$QUERY_RESULTS" | awk 'FNR == 10 {printf "%0s %1s ", $3 , $9}'`
##choice9=`printf "$QUERY_RESULTS" | awk 'FNR == 11 {printf "%0s %1s ", $3 , $9}'`
##choice10=`printf "$QUERY_RESULTS" | awk 'FNR == 12 {printf "%0s %1s ", $3 , $9}'`
##choice11=`printf "$QUERY_RESULTS" | awk 'FNR == 13 {printf "%0s %1s ", $3 , $9}'`
##choice12=`printf "$QUERY_RESULTS" | awk 'FNR == 14 {printf "%0s %1s ", $3 , $9}'`
##choice13=`printf "$QUERY_RESULTS" | awk 'FNR == 15 {printf "%0s %1s ", $3 , $9}'`
##choice14=`printf "$QUERY_RESULTS" | awk 'FNR == 16 {printf "%0s %1s ", $3 , $9}'`
##choice15=`printf "$QUERY_RESULTS" | awk 'FNR == 18 {printf "%0s %1s ", $3 , $9}'`
##choice16=`printf "$QUERY_RESULTS" | awk 'FNR == 19 {printf "%0s %1s ", $3 , $9}'`
##choice17=`printf "$QUERY_RESULTS" | awk 'FNR == 20 {printf "%0s %1s ", $3 , $9}'`


##testing
##
##`date +'%d-%m-%Y'` | awk 'BEGIN { print strftime(" %d", date +'%d-%m-%Y')}
##
##
##awk 'BEGIN { print strftime(" %d", `date +'%d-%m-%Y`)}'
##
##
##FS=’-’ read -ra NAMES <<< "28-04-2019" echo ${NAMES[1]}
##
##Resources:
##
##https://blog.edmdesigner.com/send-email-from-linux-command-line/
##
##email template
##
##	Cc: fez29@protonmail.com
##	Subject: testing email
##	From: fezmv@protonmail.com
##	Content-Type: text/html; charset="utf8"
##
##
##	html>
##	<body>
##	<div style="
##		background-color:
##		#abcdef; width: 300px;
##		height: 300px;
##		">
##	</div>
##	This is a Reminder of payment due for your Hosted supernodes.
##	</body>
##	</html>

#required for database

Customer table

ID/Primary Key
Customer Number
Customer details (Name,Telegram handle)
email
Email alerts (Yes/No)
Sign Up date

Payments table

ID/Primary Key
Customer Number
Currency
Date Paid
For Month
TX ID
Confirmed?