Write-Host 
"__________________________________
/                                  \
/					  \__________
/                                                \
/                                                  \
/                                                    \
/                                                      |
/		 _______________			|
/                |	|	|                      /|
/                 |=======+=======|                     / |
/                  |_______|_______|                    /  |
/_______________________________________________________/   |
|                                                       |   /
|   _   _       _   _   _       _   _       _   _   _   |  /
|__//|_//|_____//|_//|_//|_____//|_//|_____//|_//|_//|__| /
/  /// ///  /  /// /// ///  /  /// ///  /  /// /// ///  / /
/  ||/ ||/  /  ||/ ||/ ||/  /  ||/ ||/  /  ||/ ||/ ||/  / /
/___/___/___/___/___/___/___/___/___/___/___/___/___/___/ /
|___|___|___|___|___|___|___|___|___|___|___|___|___|___|/
\   /                                 \   /
| ||                                  | ||
| ||                                  | ||
|_|/                                  |_|/"

Write-Host "|||Welcome to PowerPiano|||"
Write-Host "Make sure your system sound is on! On your keyboard, press keys Q-I, A-J, Z-M to play notes! Press p to quit."
Write-Host "Note: You will need to enter the secret correctly on the first try to get the success message.
If you make a mistake, quit and start the script again!"
$quit = 1
$key = ""
$encoded = '16967278344236157238454695098065858454695098042361509804546957238454694236131682278343168250980423613648042361'
$global:verifier = ""

function Test-Key {
    $calc = ([byte][char]$_ * $hz) -bxor 2
    $global:verifier += $calc.ToString()

    if ($global:verifier -eq $encoded) {
        Write-Host "Success! You got the secret code! Your flag is in the format: ts{<INSERT_SECRET_CODE_HERE>}
        Make sure to enter the code in all caps! Ex: ts{XXXXXXXXXXXXXXXXXXXXX}"

    }
}

while ($quit = 1) {
    switch ([console]::ReadKey($input).Key) {
        {$_ -eq [system.consolekey]::p} {return}
        {$_ -eq [system.consolekey]::z} {[console]::beep(130,200); $key+= $_; $hz= 130; Test-Key}
        {$_ -eq [system.consolekey]::x} {[console]::beep(146,200); $key+= $_; $hz= 146; Test-Key}
        {$_ -eq [system.consolekey]::c} {[console]::beep(164,200); $key+= $_; $hz= 164; Test-Key}
        {$_ -eq [system.consolekey]::v} {[console]::beep(174,200); $key+= $_; $hz= 174; Test-Key}
        {$_ -eq [system.consolekey]::b} {[console]::beep(196,200); $key+= $_; $hz= 196; Test-Key}
        {$_ -eq [system.consolekey]::n} {[console]::beep(220,200); $key+= $_; $hz= 220; Test-Key}
        {$_ -eq [system.consolekey]::m} {[console]::beep(246,200); $key+= $_; $hz= 246; Test-Key}
        {$_ -eq [system.consolekey]::a} {[console]::beep(261,200); $key+= $_; $hz= 261; Test-Key}
        {$_ -eq [system.consolekey]::s} {[console]::beep(293,200); $key+= $_; $hz= 293; Test-Key}
        {$_ -eq [system.consolekey]::d} {[console]::beep(329,200); $key+= $_; $hz= 329; Test-Key}
        {$_ -eq [system.consolekey]::f} {[console]::beep(349,200); $key+= $_; $hz= 349; Test-Key}
        {$_ -eq [system.consolekey]::g} {[console]::beep(392,200); $key+= $_; $hz= 392; Test-Key}
        {$_ -eq [system.consolekey]::h} {[console]::beep(440,200); $key+= $_; $hz= 440; Test-Key}
        {$_ -eq [system.consolekey]::j} {[console]::beep(493,200); $key+= $_; $hz= 493; Test-Key}
        {$_ -eq [system.consolekey]::q} {[console]::beep(523,200); $key+= $_; $hz= 523; Test-Key}
        {$_ -eq [system.consolekey]::w} {[console]::beep(587,200); $key+= $_; $hz= 586; Test-Key}
        {$_ -eq [system.consolekey]::e} {[console]::beep(659,200); $key+= $_; $hz= 659; Test-Key}
        {$_ -eq [system.consolekey]::r} {[console]::beep(698,200); $key+= $_; $hz= 698; Test-Key}
        {$_ -eq [system.consolekey]::t} {[console]::beep(784,200); $key+= $_; $hz= 784; Test-Key}
        {$_ -eq [system.consolekey]::y} {[console]::beep(880,200); $key+= $_; $hz= 880; Test-Key}
        {$_ -eq [system.consolekey]::u} {[console]::beep(987,200); $key+= $_; $hz= 987; Test-Key}
        {$_ -eq [system.consolekey]::i} {[console]::beep(1046,200); $key+= $_; $hz= 1046; Test-Key}
        default {Write-Host "Oops, that key doesn't correspond to a note!"}
    }
    $quit = 0
}




