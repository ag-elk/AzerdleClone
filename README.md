# **Azerdle clone**
## Discription:
_Project made with ***Godot*** 4.4. - This is a clone of ***Azerdle*** made by ***Awfyboy***._

#### Within this project:
- There are three text files:
    - ``` word_list_all ```- containing roughly 10'000 six letter words;
    - ``` word_list ``` - containing around 40 of the words featured in the _word_list_all_;
    - ``` hint_list ``` - containing short definitions for words within _word_list_.
- Entries from text files are read and added to their respective arrays.
- User input is check to determine matches and confirm correct guesses.
- Varying resolutions are supported using Godot Control nodes, anchors and viewport settings.
- The setup contains a custom virtual keyboard.
- AudioStreamRandomiser is used to play random sounds at random pitches.
- Tweens and AnimationPlayers are used to enhance UI elements.
- SignalBus is used as a singleton for global signal communication.
- A title screen menu and a pause menu are added to give the project a more polished appearance.

## New functions
```show_hint()``` - assigns a message to the _HintBox_ label.\
```_on_hints_toggled()``` - receives a signal and accordingly shows or hides the _HintBox_ label.\
```_on_play_pressed()``` - receives a signal and pauses the game.\
```pause()``` – pauses the _main_ scene.\
```_on_resume_pressed()``` - receives a signal and resumes the game.\
```resume()``` – un-pauses the _main_ scene.\
```testEsc()``` - receives a signal and accordingly calls the _menu_ scene by pausing  or un-pausing the game.\
```_on_info_pressed()``` - receives a signal and shows the _INFO_ label.\
```_on_back_pressed()``` - receives a signal and hides the _INFO_ label.\
```_on_quit_pressed()``` - receives a signal and stops the program.

## Installation and use
To access and work with this project you will need to instal ***Godot***.

## User guide when running the code
After clicking on the title screen button “**play**” you can simply type letters and submit answers for evaluation, as well as turn the background music on or off just like in Azerdle, but you can also check the hints by using the toggle button or pressing “**1**”.\
You can open the pause menu by pressing “**0**” whilst pressing “**continue**” allows you to close it.\
From the title screen and pause menu you can also check the hotkeys, or quit the program by interacting with buttons “**info**” and “**quit**” respectively.

## Licence
MIT licence

Copyright 2025 ag-elk

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
