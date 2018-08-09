# Kill The Messenger
## About
Kill The Messenger is a customizable iMessage spammer meant to help you get your message across. Whether it be getting someone to do their work, asking someone an important question, or just annoying all your friends, Kill The Messenger is here for you.
## Dependencies
The following dependencies are all built into recent Apple computers.
- AppleScript
- iMessage
- Ruby

## Usage
Kill the Messenger generates messages based on a list of messages and a list of wrappers. The message has a chance to be generated with a wrapper around it, and its position is determined by two @’s in the wrapper. For example, if a message was generated with the wrapper “Do your @@ please” and the message “homework”, the complete message would be “Do your homework please”. If a specific message or wrapper appears in a list more than once, it will be more likely to be chosen.

The simplest way to start the script is to open Terminal and enter `ruby path/to/messenger/send.rb “John Doe” 3`

However, it would be much easier to set an alias for the script, which can be done with `alias spam=“ruby path/to/messenger/send.rb”`.

After setting an alias, you would only have to type `spam “John Doe” 3`.

Upon running this command, you would be prompted for a list of messages. It is important that you input them with quotations around each one. If you do not, they will be separated by spaces. For example, the input `do your homework clean your room` would be interpreted as 6 messages: “do”, “your”, “homework”, “clean”, “your”, and “room”. However, if you input `"do your homework" “clean your room”` it would be interpreted as 2 messages: “do your homework” and “clean your room”.

After inputing a list of messages, it will prompt you to input an optional list of wrappers in the same fashion. If you have already given it a list of wrappers, the new wrappers will be added to the others you have given it. If you do input a list of wrappers, make sure you specify the position of the message with `@@`. More than one `@@` can be placed in  a wrapper.

Once you have given all the required inputs, a text message will be sent from you to the contact “John Doe” in your address book. Changing the name from “John Doe” to any contact in your address book would make the message send to the specified contact. If this contact does not exist, you will be asked to input a valid contact. This input should not have quotation marks. If you do not want the messages to send, you can replace the contact name with `[nobody]`. You will get an error message if you try to send a message to yourself.

A text generated from your message and wrapper lists would be sent to the contact (in this case, “John Doe”) every 3 seconds. you can specify the buffer you want between each message by changing this number. You can even change it to a decimal or zero. If you do not input a number, it will be set to 0.5 as a default. To stop the spammer, break the program as usual.

## Arguments

You can pass arguments to the program from your command, but only after giving it a contact name and a time. Here is a list of arguments, what they do, and how to use them.

#### `-w`

syntax: `-w “wrapper” “wrapper” “wrapper”`

Using -w is a quick way to pass wrappers into the program. just input wrappers in quotations after typing -w. Every wrapper you type until the next argument or end of line will be used in the program.

#### `-m`  

syntax: `-m “message” “message” “message"`

Using -m is a quick way to pass messages into the program. just input message in quotations after typing -m. Every message you type until the next argument or end of line will be used in the program.

#### `-sw`  

syntax: `-sw “[wrapper list name]” “wrapper” “wrapper” “wrapper”`

If you want to save a list of wrappers to use later, you can easily do so with `-sw`. First type `-sw`, then the name you want to save the wrapper list under, followed by the wrappers in quotations. Saving a list that already exists will add to it. You can later load the wrapper list to use by using the -lw argument.

#### `-sm`

syntax: `-sm “[message list name]” “message” “message” “message”`

If you want to save a list of messages to use later, you can easily do so with `-sm`. First type `-sm`, then the name you want to save the message list under, and then input messages in quotations. Saving a list that already exists will add to it. You can later load the message list to use by using the -lm argument.

#### `-dw`

syntax: `-dw “[wrapper list name]”`

Simply deletes a saved wrapper list. The list will be unrecoverable after deletion.

#### `-dm`

syntax: `-dm “[message list name]”`

Simply deletes a saved message list. The list will be unrecoverable after deletion.


#### `-lw`

syntax: `-lw “[wrapper list name]”`

Loads a previously saved wrapper list and gives it to the program to be used. Multiple list names can be given for the program to use multiple lists.


#### `-lm`

syntax: `-lm “[message list name]”`

Loads a previously saved message list and gives it to the program to be used. Multiple list names can be given for the program to use multiple lists.
