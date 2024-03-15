# Tech Sympossium 2024
These are the 3 reverse engineering challenges that I made for the [Tech Sympossium Conference](https://techsymposium.calpolyswift.org/). <br />
Just a quick overview of each of these: <br/> 
- Secret Agent is a compiled c program where the user just has to run the "strings" linux command which outputs the flag in NATO<br/>
- Power Piano is a powershell script where the user has to look over how the code is encrypting their keys and then reverse the given encrypted string.  If they enter this clear text into the game then it will output the flag.<br/>
- Swift Dating Game is a compiled renpy visual novel program which eventually asks the user for a password and they have to decompile the renpy files and then solve a custom password check method which implements many unique algorithms.  *In the actual Releases, the .rpy files are removed so they have to decompile them but they are provided here for easy access.*
	- Check script.rpy for the hidden methods