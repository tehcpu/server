<?php
// include our OAuth2 Server object
require_once __DIR__.'/server.php';

// Handle a request to a resource and authenticate the access token
if (!$server->verifyResourceRequest(OAuth2\Request::createFromGlobals())) {
    $server->getResponse()->send();
    die;
} else {
	if ($_POST != null) {
		switch ($_POST["method"]) {
			case 'check':
				# code...
				break;
			case 'load':
				# code...
				break;
			default:
				echo "string";
				break;
		}
	}
}
?>