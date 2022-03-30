#NoTrayIcon
Gui, Color, 282828, 282828
Gui, Add, Text, x162 y1 w120 h30 cwhite , Spammer V2 by Kaze
Gui, Add, Button, x2 y89 w80 h70 gspam, Multi(F4)
Gui, Add, Button, x82 y20 w80 h70 gspam2, Simple(F5)
Gui, Add, Button, x82 y89 w80 h70 gLoad, SETUP
Gui, Add, Button, x2 y20 w80 h70 gStop, Stop(F6)
Gui, Add, Edit, x302 y89 w120 h70 cwhite, Data
Gui, Show, w426 h165, Discord Fucker by L8st
return
Close:
ExitApp

Load:
InputBox, Message1, Message 1, Enter the first Message, , 300, 130
InputBox, Message2, Message 2, Enter the second Message, , 300, 130
InputBox, Message3, Message 3, Enter the third Message, , 300, 130
InputBox, Delay_1, Multi-Spam, Cooldown between Messages (ms), , 300, 130
InputBox, Delay_2, Simple-Spam, Cooldown between Messages (ms), , 300, 130
return
F4::
spam:
Loop {
Random, RandomNumber , 1, 3

If RandomNumber = 1
   Send, %Message1%
Send, {Enter}
sleep, %Delay_1%
If RandomNumber = 2
     Send, %Message2%
Send, {Enter}
sleep, %Delay_1%
If RandomNumber = 3
   Send, %Message3%
Send, {Enter}
sleep, %Delay_1%
}
F5::
spam2:
Loop {
   send, %Message1%
   send, {Enter}
   sleep, %Delay_2%
}
GuiClose:
ExitApp
F6::
Stop:
ExitApp

