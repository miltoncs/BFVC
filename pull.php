<?php
echo exec('whoami');
if ($_GET['run']) {
  echo "past the if";
  # This code will run if ?run=true is set.
  echo exec("git pull");
}
?>

<!-- This link will add ?run=true to your URL, myfilename.php?run=true -->
<a href="?run=true">Click Me!</a>

new stuff!!