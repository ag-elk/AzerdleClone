# **Azerdle clone**
## Description:
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

## Old functions
```_ready()``` - the main function that runs the program.\
```_process(delta)``` - function that is responsible for visual changes every frame\
```initialize_round()``` - readies the game window.\
```pick_new_word()``` - randomly picks a word from the _word_list_.\
```type_letter()``` - reacts to user input and adds a letter to the current row if the row is not filled.\
```erase_letter()``` - reacts to user input and removes a letter from the current row if the row is not empty.\
```show_error()``` - is used to prepare and show the visual appearance of the _ErrorBox_ label.\
```get_guess()``` - combines the letters in the current row and returns the result.\
```confirm_answer()``` - shows the result for each block of the current row.\
```lose_round()``` - executes the actions related to the user not guessing the answer.\
```win_round()``` - executes the actions related to the user guessing the answer.\
```tween_arrows()``` - is in charge of the appearance and movement of the anchor arrows.\
```reset_arrows()``` - resets the arrow position.\
```tween_round_counter()```  - regulates the appearance of the round counter.\
```tween_win_counter()``` - regulates the appearance of the win counter.\
```tween_wipe()``` - regulates the visual group.\
```change_background_color()``` - changes the background colour.\
```virtual_key_received()``` - reacts and adds a letter to the current row if a key is pressed on the virtual keyboard by calling the function _type_letter_.\
```virtual_enter_received()``` - calls the function _confirm_answer_.\
```virtual_back_received()``` - calls the function _erase_letter_.\
```_on_mute_button_pressed()``` - turns the background music on or off.\
```_on_error_timer_timeout()``` - hides the _ErrorBox_ label after a certain amount of time.\
```_on_restart_timer_timeout()``` - calls the function _initialize_round_.\
```_on_relax_timer_timeout()``` - plays the music after the timer finishes.\
```_on_music_finished()``` - starts the timer.

```refresh_state()``` - updates the appearance of block.\
```change_state()``` - works with user input to asses whether it's correct half-correct or wrong.\
```update_visuals()``` - changes the appearance of virtual keys.\
```_on_button_pressed()``` - receives a signal and plays an animation.\
```_on_button_mouse_entered()``` - shades the corresponding key.\
```_on_button_mouse_exited()``` - reverts the key's appearance.

```change_visibility()``` - determines what aspects of a block are visible.\
```change_color()``` - determines the colour of the assets that make up a block.\
```update_state()``` - changes the appearance by calling _change_visibility()_ and _change_color()_.\
```_on_pressed()``` - plays an animation for the mute button and mutes or unmutes the music.

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
To access and work with this project you will need to instal ***Godot***. \
**Link to download**: [https://godotengine.org/download/windows/](https://godotengine.org/download/windows/) \
**How to run for first time**:
- download Godot engine
- unzip the file map with Godot and start the .exe file
- download this project and unzip it
- open the project in Godot and run it


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
