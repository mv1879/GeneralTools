<?php
        /*$IP_VALUE="51.79.43.168" ;
        $PORT_VALUE="18690" ;
        $STAKE_AMOUNT_VALUE="50000" ;
        $STAKE_BLOCK_PERIOD_VALUE="5000" ;*/
	$IP_VALUE=$_POST["IP_value"] ;
	$PORT_VALUE=$_POST["PORT_value"] ;
        $STAKE_AMOUNT_VALUE=$_POST["STAKE_AMOUNT_value"] ;
        $STAKE_BLOCK_PERIOD_VALUE=$_POST["STAKE_BLOCK_PERIOD_value"] ;
        $RETURN=exec ("/var/www/sensiblebizsolutions.com/html/getstakecommand.sh $IP_VALUE $PORT_VALUE $STAKE_AMOUNT_VALUE $STAKE_BLOCK_PERIOD_VALUE");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Affordable and professional web design">
    <meta name="keywords" content="cryptocurrency, linux services, crypto hosting">
    <meta name="author" content="Fez/MV">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sensible Biz Solutions | Home</title>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <header>
        <div class="container">
            <div id="branding">
                <h1>Sensible Business Solutions</h1>
            </div>
            <nav>
                <ul>
                    <li class="current"><a href="index.html">Home</a></li>
                    <li><a href="old.html">Original</a></li>
                    <li><a href="Login.html">Login</a></li>
                </ul>
            </nav>
    </div>
    </header>
	<section id="showcase">
        <div class="container">
            <h1>Affordable Linux Hosting Solutions</h1>
            <p>We are a startup company that is targeting novice Linux users to provide hosting of services for them and providing this at an extrememly affordable rate.</p>
        </div>
    </section>
    <section id="main">
        <div class="container">
            <aside id="sidebar">
                <div class="dark">
                    <h2>Payments</h2>
                    <p> We accept payments only in CryptoCurrency
                    Currently that is:
                    Monero (XMR)
                    Loki (LOKI)
                    Graft (GRFT)
                    Bitcoin (BTC)</p>
                    
                    <!-- <div class="payment">
                        Please select your payment type here
                        <form action="./testexec.php" method="post">
                            <!---->  <!--For dropdown list
                            <select>
                                <option value="XMR">Monero (XMR)</option>
                                <option value="LOKI">Loki (LOKI)</option>
                                <option value="GRFT">Graft (GRFT)</option>
                                <option value="BTC">Bitcoin (BTC)</option>
                            </select> 
                            For box to slect with each value
                            Currency: <input type="submit" name="option value" value="XMR"><br>
                            --> <!--
                            
                            Currency: &#8195; &#8195; &#8195; <input type="text" name="value" value="XMR"/> <br>
                            Wallet Address: &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="walletaddress" value=""/> <br>
                            <input type="Submit" value="Submit"/> 
                         
                        </form> -->
                        
                        <div class="payment">
                        <table>
                        Please select your payment type here
                        <form action="./testexec.php" method="post">
                            <!--For dropdown list
                            <select>
                                <option value="XMR">Monero (XMR)</option>
                                <option value="LOKI">Loki (LOKI)</option>
                                <option value="GRFT">Graft (GRFT)</option>
                                <option value="BTC">Bitcoin (BTC)</option>
                            </select> 
                            For box to slect with each value
                            Currency: <input type="submit" name="option value" value="XMR"><br>
                            --> 
                            
                                <tr><td><label for="txtCurrency">Currency:</label> <td> <input type="text" name="value" value="XMR" size="20"/> <br>
                                <tr><td><label for="txtCurrency">Wallet Address:</label> <td> <input type="text" name="walletaddress" value="" size="20"/> <br>
                                <tr><td> <input type="Submit" value="Submit"/>
                                </form>                      
                        </table>
                    
                        
                        <table>
                            <form action="./getexpirydate.php" method="post">
                            <tr><td><label for="txtPublicId">PublicId:</label>                
                            <td> <td> <input type="text" name="PublicId" value="" size="30"/>
                            <br>
                            <tr><td> <input type="Submit" value="Submit" size="20"/>
                            </form>
                        </table>
                    </div>
                </div>
                </aside>

                <article id="main-col">
                    <form action="./stakecommand.php" method="post" class="standard-form">
                        <p>Create Stake Command:</p>
                            <div class="form-group">
<!--
Commented Code: Return in standard Textbox
                                <label for="STAKE_COMMAND_RETURN">Stake Command:</label> 
                                <input type="text" name="STAKE_COMMAND_RETURN" value="<?php echo $RETURN;?>" size="60"> 
End of commented code 
-->
				<textarea name="text" rows="5" cols="130" wrap="soft"><?php echo $RETURN;?></textarea>
                            </div>
                       <!-- <input type="Submit" value="Submit"/> -->
                    </form>
                </article>
            </div>
        </section>
    </div>
<!--  Return in Table
        <table>
        <tr>
             <td>Stake Command</td>
             <td><?php echo $RETURN;?></td>
        </tr>
        </table>
-->
    <footer>
        <p>Sensible Business Solutions, Copywrite &copy; 2019</p>
    </footer>
</body>
</html>
