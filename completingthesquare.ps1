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


function SqrComnum($sqrx,$justx,$sqry,$justy,$cons){
Write-Host $test

if($sqrx -cne 0 -and $sqry -cne 0){
#x section for completing the square
$newx = $justx/$sqrx
Write-Host $newx
$newxover2 = $newx/2
$xbcom = [Math]::Pow(($newx/2),2)
$xbnegcom = 0-$xbcom
 Write-Host $sqrx"(x+$newxover2)^2+$xbnegcom)"
 # x section for completing the square
 
 #section for completing the square with y
 $newy = $justy/$sqry
Write-Host $newy
$newyover2 = $newy/2
$ybcom = [Math]::Pow(($newy/2),2)
$ybnegcom = 0-$ybcom
$ycomplete = "$sqry(y+$newyover2)^2+$ybnegcom)"
 Write-Host $ycomplete
 #section for completing the square with y

 $xadd = $sqrx*$xbnegcom
 $yadd = $sqry*$ybnegcom

 $finaladd = $xadd+$yadd+$cons

 Write-Host "$sqrx(x+$newxover2)^2+($xadd)+$sqry(y+$newyover2)^2+($yadd)+($cons)"

 Write-Host "Final equation:"
 $final =  "$sqrx(x+$newxover2)^2+$sqry(y+$newyover2)^2+($finaladd)=0"

 Write-Host $final

}elseif($sqrx -eq 0 -and $sqry -cne 0){
$newy = $justy/$sqry
Write-Host $newy
$newyover2 = $newy/2
$ybcom = [Math]::Pow(($newy/2),2)
$ybnegcom = 0-$ybcom
$ycomplete = "$sqry(y+$newyover2)^2+$ybnegcom)"
 Write-Host $ycomplete
 $yadd = $sqry*$ybnegcom
 $finaladd = $yadd+$cons
 Write-Host "Final equation:"
  $final = "$sqry(y+$newyover2)^2+("+$justx+")x +($finaladd)=0"
  Write-Host $final

}elseif($sqry -eq 0 -and $sqrx -cne 0){

$newx = $justx/$sqrx
Write-Host $newx
$newxover2 = $newx/2
$xbcom = [Math]::Pow(($newx/2),2)
$xbnegcom = 0-$xbcom
 Write-Host $sqrx"(x+$newxover2)^2+$xbnegcom)"

 $xadd = $sqrx*$xbnegcom
 $finaladd = $xadd+$cons
 Write-Host "Final equation:"
  $final = "$sqrx(y+$newxover2)^2+("+$justy+")y +($finaladd)=0"
  Write-Host $final


}



}

$2x = Numin -prompt "enter the square x value"
$x = Numin -prompt "enter the x value"
$2y = Numin -prompt "enter the square y value"
$y  = Numin -prompt "enter the y value"
$c  = Numin -prompt "enter the constant"


SqrComnum -sqrx $2x -justx $x -sqry $2y -justy $y -cons $c
 











