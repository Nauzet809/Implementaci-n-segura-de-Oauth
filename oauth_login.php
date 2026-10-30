<?php
$auth_url = "https://github.com/login/oauth/authorize?" . http_build_query([
"client_id" => "Iv23liK47FXbzKnVZb1R",
"redirect_uri" => "http://localhost/oauth/oauth_callback.php",
"state" => $state,
"scope" => "read:user"
]);
header("Location: " . $auth_url);
exit();
