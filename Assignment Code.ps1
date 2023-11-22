Function Sum { 
$num1 = read-host -Prompt "Enter First Number"
$num2 = read-host -Prompt "Enter Second Number"
[int]$num1 = [convert]::ToInt32($num1, 10)
[int]$num2 = [convert]::ToInt32($num2, 10)
$sum = $num1 + $num2
Write-Host "Result: $sum" }
#Testing with Pester
Describe "Sum" {
BeforeAll {
function Sum ($num1, $num2) {
return $num1 + $num2
}}

It "Adds two numbers" {
$testcases = @(
@{ num1 = 2; num2 = 3; expectedResult = 5 } )
$sum = Sum $num1, $num2
$sum | Should Be $expectedResult
}}