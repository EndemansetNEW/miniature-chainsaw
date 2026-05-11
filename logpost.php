<?php
file_put_contents("postlog.txt",
    "==== " . date("Y-m-d H:i:s") . " ====\n" .
    print_r($_POST, true) .
    "\n\n",
    FILE_APPEND
);
echo "1";
?>
