/* Show value input as POST on page*/
/*Welcome <?php echo $_POST["value"]; ?>.<br />*/

<?php
	$POST_VALUE=$_POST["value"] ;
	$WALLET_ADDRESS=$_POST["walletaddress"] ;
	/*shell_exec("bash -c \"echo \"Hello\" > /tmp/hello_php.txt\""); */
	/*shell_exec ( "bash -c \"echo $POST_VALUE > value.txt\"" ) ;*/
	shell_exec ("/var/www/sensiblebizsolutions.com/html/currency_selection.sh $POST_VALUE $WALLET_ADDRESS");
	header ('Location: http://192.168.200.103');
?>

