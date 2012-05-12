class Queue
	constructor: (@data = []) ->
	
	isEmpty: =>
		@data.length == 0
	enqueue: (obj) =>
		@data.push obj
	last: () ->
		@data.shift()
	peek: =>
		@data[0]
	clear: =>
		@data = []
	size: =>
		@data.length

notify_messages = new Queue
notify_notifying = false

publish = ->
	notify_notifying = true
	msg = notify_messages.last()
	display msg
	
display = (msg) ->
	$(msg.container).queue (next) ->
		$(@).addClass(msg.messageClass).slideDown().html(msg.message).delay(msg.timing).slideUp ->
			$(msg.container).removeClass(msg.messageClass, ->
			if notify_messages.isEmpty()
				notify_notifying = false
			else
				publish notify_messages
				$('.queue span').html(notify_messages.size())
			)
		next()	

$.notify = (args) ->
	defaults = {
		message: 'hello world',
		container: '#notify',
		messageClass: 'success',
		timing: 1000		
	}
	options = $.extend(defaults, args || {})
	if notify_notifying
		notify_messages.enqueue(options)
	else
		notify_messages.enqueue(options)
		publish notify_messages