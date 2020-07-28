<?php

$password = 'RogerResplendent1953!';
$algo = PASSWORD_ARGON2ID;
$options = [ 'memory_cost' => 16000000,
              'time_cost' => 1000,
              'threads' => 20];

// $result = password_hash($password,$algo,$options = []) >> "/home/jed-xeno/result.txt";

?>