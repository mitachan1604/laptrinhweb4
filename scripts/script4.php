<?php
$a = 10;
$b = 20;
$c = -30;
$delta = $b * $b - 4 * $a * $c;

if ($delta > 0) {
    $x1 = (-$b + sqrt($delta)) / (2 * $a);
    $x2 = (-$b - sqrt($delta)) / (2 * $a);
    echo "Nghiệm của phương trình là: $x1 và $x2";
} elseif ($delta == 0) {
    $x = -$b / (2 * $a);
    echo "Nghiệm kép của phương trình là: $x";
} else {
    echo "Phương trình vô nghiệm.";
}
?>
