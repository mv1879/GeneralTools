create table test_table ( id int,first_name text, last_name text, telegram_handle text, date_started DATE NOT NULL DEFAULT CURRENT_DATE);


insert into test_table (id,first_name,last_name,telegram_handle) values (1,'cryptotater','unknown','cryptotater');


bash

psql -U postgres -d database_name -c "SELECT *  FROM test_db"



CREATE TABLE documents (
 document_id serial PRIMARY KEY,
 header_text VARCHAR (255) NOT NULL,
 posting_date DATE NOT NULL DEFAULT CURRENT_DATE
);


random user with no access
sudo -u postgres -H -- psql -d test_db -c "SELECT *  FROM test_table"

as user with access -U = user logged in as
in example startdate cloumn will a day value eg, 24

function EMAIL_USER
{
    echo "TEST_FUNCTION $choice1_1"
}

SYSTEMDATE=\'$(date +'%d-%m-%Y')\'
#SYSTEMDATE=`date +'%d'`
QUERY_RESULTS=`psql -U postgres -d test_db -c "SELECT * FROM test_table WHERE date_started=$SYSTEMDATE"`

#column 3 ($3) equal to email
choice1=`printf "$QUERY_RESULTS" | awk 'FNR == 3 {printf "%0s ", $3}'`
#Column 9 ($9) equal to date or "DAY"
choice1_1=`printf "$QUERY_RESULTS" | awk 'FNR == 3 {printf "%0s ", $9}'`
choice2=`printf "$QUERY_RESULTS" | awk 'FNR == 4 {printf "%0s ", $3}'`
choice2_1=`printf "$QUERY_RESULTS" | awk 'FNR == 4 {printf "%0s ", $9}'`
choice3=`printf "$QUERY_RESULTS" | awk 'FNR == 5 {printf "%0s ", $9}'`
choice3_1=`printf "$QUERY_RESULTS" | awk 'FNR == 5 {printf "%0s ", $9}'`
choice4=`printf "$QUERY_RESULTS" | awk 'FNR == 6 {printf "%0s ", $9}'`
choice4_1=`printf "$QUERY_RESULTS" | awk 'FNR == 6 {printf "%0s ", $9}'`
choice5=`printf "$QUERY_RESULTS" | awk 'FNR == 7 {printf "%0s ", $9}'`
choice5_1=`printf "$QUERY_RESULTS" | awk 'FNR == 7 {printf "%0s ", $9}'`
choice6=`printf "$QUERY_RESULTS" | awk 'FNR == 8 {printf "%0s ", $9}'`
choice7=`printf "$QUERY_RESULTS" | awk 'FNR == 9 {printf "%0s ", $9}'`
choice8=`printf "$QUERY_RESULTS" | awk 'FNR == 10 {printf "%0s ", $9}'`
choice9=`printf "$QUERY_RESULTS" | awk 'FNR == 11 {printf "%0s ", $9}'`
choice10=`printf "$QUERY_RESULTS" | awk 'FNR == 12 {printf "%0s ", $9}'`
choice11=`printf "$QUERY_RESULTS" | awk 'FNR == 13 {printf "%0s ", $9}'`
choice12=`printf "$QUERY_RESULTS" | awk 'FNR == 14 {printf "%0s ", $9}'`
choice13=`printf "$QUERY_RESULTS" | awk 'FNR == 15 {printf "%0s ", $9}'`
choice14=`printf "$QUERY_RESULTS" | awk 'FNR == 16 {printf "%0s ", $9}'`
choice15=`printf "$QUERY_RESULTS" | awk 'FNR == 18 {printf "%0s ", $9}'`
choice16=`printf "$QUERY_RESULTS" | awk 'FNR == 19 {printf "%0s ", $9}'`
choice17=`printf "$QUERY_RESULTS" | awk 'FNR == 20 {printf "%0s ", $9}'`

echo "choice1: $choice1"
echo "choice1_1: $choice1_1"

	if [ "$SYSTEMDATE" == "$choice1_1" ];
	then
	EMAIL_USER $choice1
	fi




Get certain columns
choice2=`printf "$QUERY_RESULTS" | awk 'FNR == 3 {printf "%0s %1s ", $3 , $9}'`

Notes insert a cloumn with only the "DAY" of the month started


`date +'%Y-%m-%d'`


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