<?php
$arr = array(1, 5, 10, 2, 9, 45, 3, 7);
rsort($arr);
foreach ($arr as $value) {
    echo $value . ' ';
}
?>
