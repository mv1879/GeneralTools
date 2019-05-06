<?php
       function GetStakeCommand(){
                 /*$IP_VALUE="51.79.43.168" ;
        $PORT_VALUE="18690" ;
        $STAKE_AMOUNT_VALUE="50000" ;
        $STAKE_BLOCK_PERIOD_VALUE="5000" ;*/
	    $IP_VALUE=$_POST["IP_value"] ;
        $PORT_VALUE=$_POST["PORT_value"] ;
        $STAKE_AMOUNT_VALUE=$_POST["STAKE_AMOUNT_value"] ;
        $STAKE_BLOCK_PERIOD_VALUE=$_POST["STAKE_BLOCK_PERIOD_value"] ;
        /* $WALLET_ADDRESS=$_POST["walletaddress"] ; */
        /* shell_exec("bash -c \"echo \"Hello\" > /tmp/hello_php.txt\""); */
        /* shell_exec ( "bash -c \"echo $POST_VALUE > value.txt\"" ) ;*/
        $RETURN=exec ("/var/www/sensiblebizsolutions.com/html/testscripts/getstakecommand.sh $IP_VALUE $PORT_VALUE $STAKE_AMOUNT_VALUE $STAKE_BLOCK_PERIOD_VALUE");
        echo "$RETURN";
	    /*header ('Location: http://192.168.200.103');*/     
       }
       function SubmitCurrencyGetAddress(){
       $POST_VALUE=$_POST["value"] ;
       $WALLET_ADDRESS=$_POST["walletaddress"] ;
       /*shell_exec("bash -c \"echo \"Hello\" > /tmp/hello_php.txt\""); */
       /*shell_exec ( "bash -c \"echo $POST_VALUE > value.txt\"" ) ;*/
       $WalletRETURN=shell_exec ("/var/www/sensiblebizsolutions.com/html/currency_selection.sh $POST_VALUE");
       /*Return to main page:// header ('Location: http://192.168.200.103'); // */
       echo "$WalletRETURN";
       }
?>
