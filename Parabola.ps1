function NumIn($prompt){
 $num = Read-Host -Prompt $prompt
 if($num.IndexOf("/")-eq -1){
 return [double]::Parse($num)
 }else{
   $numerator = $num.Substring(0,$num.IndexOf("/"))
   Write-Host $numerator
   $denominator = $num.Substring($num.IndexOf("/")+1)
   Write-Host $denominator
   $out = [double]::Parse($numerator)/[double]::Parse($denominator)
   return $out

 }

}


function Parabola($numtype,$nump,$numk,$numh){
$realp = $nump/4
$focy = $numk+$realp
$Dir = $numk-$realp
$x1 = ($numh+(2*$realp))
$x2 = ($numh-(2*$realp))
 if( $numtype -eq 1){
 Write-Host "must be vertical parabola"
 Write-Host "Value of P is: $realp"
 Write-Host "The vertex is: ($h,$k)"
 Write-Host "The Focus is: ($h,$focy)"
 Write-Host "The Directrix is: y=$Dir"
 Write-Host "The first point of the L.T. = ($x1,$focy)"
 Write-Host "The last point of the L.T = ($x2,$focy)"
 } else{
 Write-Host "must be a horizontal parabola"
  Write-Host "Value of P is: $realp"
 Write-Host "The vertex is: ($h,$k)"
 Write-Host "The Focus is: ("($numh+$realp)",$k)"
 Write-Host "The Directrix is: x="($numh-$realp)
 Write-Host "The first point of the L.T. =("($numh+$realp)","($numk+(2*$realp))")"
 Write-Host "The last point of the L.T =("($numh+$realp)","($numk-(2*$realp))")"


 } 

}


$type = NumIn -prompt "what type is it, 1) vertical 2) horizontal"
$h = NumIn -prompt "enter h value" 
$k = NumIn -prompt "enter k value"
$p = NumIn -prompt "Enter p value"

Parabola -numtype $type -nump $p -numk $k -numh  $h




