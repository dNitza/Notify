Notify
======

Notify is a lightweight jQuery plugin (written in Coffee Script) to handle your alerts and notifications.

It's super easy to implement, all you need to do is include jQuery and call _$.notify()_ and pass in the options you want (outlines below) whenever you want your notifications to appear.

###Usage

####Basic HTML:

	<div id="notify"></div>

####Basic CSS:

	#notify{
	 display:none;
	 //Any other styles such as position:fixed etc.
	}


####Basic JS:

	$.notify({
	 message: 'hello world',
	 container: '#notify',
	 messageClass: 'success',
	 timing: 1000
	});

###Options

####Message (string): 
The message you want to publish.
######default: 'hello world'

####Container (string): 
The containing element (with css selector).
######default: '#notify'

####MessageClass (string):
The class you wish to give the notification div (eg. you may want to add a success or error class).
######default: 'success'

####showAnimation (string):
The jQuery function/animation you'd like to show your notification.
######default: 'slideDown'

####hideAnimation (string):
The jQuery function/animation you'd like to hide your notification.
######default: 'slideUp'

####Timing (string/integer):
Time you want the notification to display for (ms).
######default: 1000

###Demo
[http://www.dnitza.com/freebie/notify/](http://www.dnitza.com/freebie/notify/)