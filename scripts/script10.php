<?php
function isPerfectSquare($num)
{
    $sqrt = sqrt($num);
    return ($sqrt * $sqrt == $num);
}

$arr = array(1, 5, 10, 2, 9, 45, 3, 7);

echo "Các số chính phương trong mảng là: ";
foreach ($arr as $value) {
    if (isPerfectSquare($value)) {
        echo $value . ' ';
    }
}
?>
