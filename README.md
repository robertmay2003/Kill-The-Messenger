# Kill The Messenger

## About
Kill The Messenger is a customizable iMessage spammer meant to help you get your message across. Whether it be getting someone to do their work, asking someone an important question, or just annoying all your friends, Kill The Messenger is here for you.

## Dependencies
The following dependencies are all built into all recent MacOS systems.
- AppleScript
- iMessage
- Ruby

## Usage
Kill the Messenger generates messages based on a list of messages and a list of wrappers. The message has a chance to be generated with a wrapper around it, and its position is determined by the pattern `@@`. For example, if a message was generated with the wrapper `Do your @@ please` and the message `homework`, the complete message would be `Do your homework please`. If a specific message or wrapper appears in a list more than once, it is more likely to occur.

The simplest way to start the script is to open Terminal and enter `ruby ktm.rb 'John Doe' 3`. This will send a text message to John Doe every three seconds.

Upon running this command, you would be prompted for a list of messages. It is important that you input them with quotations around each one. If you do not, they will be separated by spaces. For example, the input `do your homework clean your room` is interpreted as 6 messages: `do`, `your`, `homework`, `clean`, `your` and `room`. However, if you enter `'do your homework' 'clean your room'` it is interpreted as 2 messages: `do your homework` and `clean your room`.

After inputing a list of messages, it will prompt you to input an optional list of wrappers in the same fashion. If you have already given it a list of wrappers, the new wrappers will be added to the others you have given it. If you do input a list of wrappers, make sure you specify the position of the message with `@@`. More than one `@@` can be placed in  a wrapper.

Once you have given all the required inputs, a text message is sent from you to the specified contact in your address book. If this contact does not exist, you will be asked to input a valid contact. This input should not have quotation marks. If you prefer to log the messages but not send them to anybody, you can replace the contact name with `[nobody]`. You will get an error message if you try to send a message to yourself.

## Arguments

You can pass arguments to the program from your command, but only after giving it a contact name and a time. Here is a list of arguments, what they do, and how to use them.

#### `-w`

syntax: `-w 'wrapper' 'wrapper' 'wrapper'`

Using -w is a quick way to pass wrappers into the program. just input wrappers in quotations after typing -w. Every wrapper you type until the next argument or end of line will be used in the program.

#### `-m`  

syntax: `-m 'message' 'message' 'message'`

Using -m is a quick way to pass messages into the program. just input message in quotations after typing -m. Every message you type until the next argument or end of line will be used in the program.

#### `-sw`  

syntax: `-sw '[wrapper list name]' 'wrapper' 'wrapper' 'wrapper'`

If you want to save a list of wrappers to use later, you can easily do so with `-sw`. First type `-sw`, then the name you want to save the wrapper list under, followed by the wrappers in quotations. Saving a list that already exists will add to it. You can later load the wrapper list to use by using the -lw argument.

#### `-sm`

syntax: `-sm '[message list name]' 'message' 'message' 'message'`

If you want to save a list of messages to use later, you can easily do so with `-sm`. First type `-sm`, then the name you want to save the message list under, and then input messages in quotations. Saving a list that already exists will add to it. You can later load the message list to use by using the -lm argument.

#### `-dw`

syntax: `-dw '[wrapper list name]'`

Simply deletes a saved wrapper list. The list will be unrecoverable after deletion.

#### `-dm`

syntax: `-dm '[message list name]'`

Simply deletes a saved message list. The list will be unrecoverable after deletion.


#### `-lw`

syntax: `-lw '[wrapper list name]'`

Loads a previously saved wrapper list and gives it to the program to be used. Multiple list names can be given for the program to use multiple lists.


#### `-lm`

syntax: `-lm '[message list name]'`

Loads a previously saved message list and gives it to the program to be used. Multiple list names can be given for the program to use multiple lists.
