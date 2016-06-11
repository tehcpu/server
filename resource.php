<?php
// include our OAuth2 Server object
require_once __DIR__.'/server.php';
// Handle a request to a resource and authenticate the access token
if (!$server->verifyResourceRequest(OAuth2\Request::createFromGlobals())) {
    $server->getResponse()->send();
    die;
} else {
	try {
    	$dbh = new PDO('mysql:host=localhost;dbname=diplom;charset=utf8;', 'diplom', 'FB8RPhZaeYWpsYCd');
    	header('Content-type: text/html; charset=utf8');
	} catch (PDOException $e) {
	    print "Error!: " . $e->getMessage() . "<br/>";
	    die();
	}
	if ($_POST != null) {
		switch ($_POST["method"]) {
			case 'loadCurrentDay':
				$stmt = $dbh->prepare("SELECT * FROM `subjects` WHERE `week_day`=? AND `status` <> 2 AND (? between `start_date` and `end_date`) LIMIT 10");
				$stmt->execute(array($_POST["weekday"], $_POST['date']));
				$n = $stmt->rowCount();
				if ($n > 0) {
					$resultJSON = json_encode($stmt->fetchAll(PDO::FETCH_ASSOC), JSON_UNESCAPED_UNICODE);
					echo $resultJSON;
				} else {
					echo "0";
				}
				break;
			case 'loadUpdates':
				$stmt = $dbh->prepare("SELECT `client_id` FROM `oauth_access_tokens` WHERE `access_token`=? LIMIT 1");
				$stmt->execute(array($_POST["access_token"]));
				$n = $stmt->rowCount();
				if ($n > 0) {
					$client_id = $stmt->fetch(PDO::FETCH_ASSOC);
					$stmt = $dbh->prepare("SELECT `subject_id` FROM `updates_collector` WHERE `client_id`=? LIMIT 1000");
					$stmt->execute(array($client_id['client_id']));
					if ($stmt->rowCount() > 0) {
						$result = $stmt->fetchAll(PDO::FETCH_COLUMN);

						$placeHolders = implode(', ', array_fill(0, count($result), '?'));
						// Prepare the statement
						$st = $dbh->prepare("SELECT * FROM `subjects` WHERE id NOT IN ($placeHolders) AND `status`=1");

						// Iterate the IDs and bind them
						// Remember ? placeholders are 1-indexed!
						foreach ($result as $index => $value) {
						    $st->bindValue($index + 1, $value, PDO::PARAM_INT);
						}

						// This should now work
						$st->execute();

						$n = $st->rowCount();
						if ($n > 0) {
							$resultJSON = json_encode($st->fetchAll(PDO::FETCH_ASSOC), JSON_UNESCAPED_UNICODE);
							echo $resultJSON;
						} else {
							echo "0";
						}
					} else {
						$st = $dbh->prepare("SELECT * FROM `subjects` WHERE `status`=1");
						$st->execute();
						$resultJSON = json_encode($st->fetchAll(PDO::FETCH_ASSOC), JSON_UNESCAPED_UNICODE);
						echo $resultJSON;
					}
					//}
				}

				break;
			case 'getUserInfo':
				$stmt = $dbh->prepare("SELECT `client_id` FROM `oauth_access_tokens` WHERE `access_token`=? LIMIT 1");
				$stmt->execute(array($_POST["access_token"]));
				$n = $stmt->rowCount();
				if ($n > 0) {
					$client_id = $stmt->fetch(PDO::FETCH_ASSOC);
					$stmt = $dbh->prepare("SELECT `user_name`, `user_phone`, `user_email` FROM `oauth_clients` WHERE `client_id`=? LIMIT 1");
					$stmt->execute(array($client_id['client_id']));
					$resultJSON = json_encode($stmt->fetch(PDO::FETCH_ASSOC), JSON_UNESCAPED_UNICODE);
					echo $resultJSON;
				} else {
					echo '{"error": "something went wrong"}';
				}
			break;
			case 'sendFeedback':
				$stmt = $dbh->prepare("SELECT `client_id` FROM `oauth_access_tokens` WHERE `access_token`=? LIMIT 1");
				$stmt->execute(array($_POST["access_token"]));
				$n = $stmt->rowCount();
				if ($n > 0) {
					$data = json_decode($_POST["data"]);
						$client_id = $stmt->fetch(PDO::FETCH_ASSOC);
						$stmt = $dbh->prepare("INSERT INTO `diplom`.`updates_collector` (`subject_id`, `client_id`, `choice`) VALUES (?, ?, ?)");
				    for ($i = 0; $i<count($data); $i++) {
				    	$id = json_decode($data[$i])->id;
				    	$choice = json_decode($data[$i])->choice;
				    	$r = 1;
				    	if ($choice == "radio_decline") $r = 0;
				    	$stmt->execute(array($id, $client_id["client_id"], $r));
				    //}
    				}
    				echo '{"success": "true"}';
				} else {
					echo '{"error": "something went wrong"}';
				}
			break;
			default:break;
		}
	} else {
		echo "string";
	}
    $dbh = null;
}