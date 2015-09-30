// Copied / re-written from Essential Javascript Patterns section on Observers
// http://addyosmani.com/resources/essentialjsdesignpatterns/book/#constructorpatternjavascript

// A very simple new mail handler

// A count of the number of messages received
var mailCounter = 0;

// Initialize subscribers that will listen out for a topic
// with the name "inbox/newMessage"

// Render a preview of new message
var subscriber1 = subscribe( 'inbox/newMessage', function (topic, data) {
    // Log the topic for debugging purposes
    console.log('A new message was received: ', topic );

    // Use the data that was passed from out subject
    // to display a message preview to the user
    $('.messageSender').html( data.sender );
    $('.messagePreview').html( data.body );
});

// Here's another subscriber using the same data to perform
// a different task

// Update the counter displaying the number of new
// messages received via the publisher

var subscriber2 = subscribe( 'inbox/newMessage', function (topic, data) {
    $('.newMessageCounter').html( ++mailCounter );
});

publish( 'inbox/newMessage', [{
    sender: 'hello@google.com',
    body: 'Hey There! How are you doing today?'
}]);

// We could then at a later point unsubscribe our subscribers
// from receiving any new topic notifications as follows:
// unsubscribe( subscriber1 );
// unsubscibe( subscriber2 );


// samples of Publish / Subscribe / Unsubscribe
// in jQuery, Dojo, and YUI

// Publish

// jQuery: $(obj).trigger('channel', [arg1, arg2, arg3]);
$(el).trigger('/login', [{username: 'test', userData: 'test'}]);

// Dojo: dojo.publish('channel', [arg1, arg2, arg3]);
dojo.publish('/login', [{username: 'test', userData: 'test'}]);

// YUI: el.publish('channel', [arg1, arg2, arg3]);
el.publish('/login', [{username: 'test', userData: 'test'}]);

// Subscribe

// jQuery: $(obj).on( 'channel', [data], fn );
$(el).on('/login', function (event) {...});

// Dojo: dojo.subscribe('channel', fn);
var handle = dojo.subscribe('/login', function (data) {...});

// YUI: el.on('channel', handler);
el.on('/login', function (data) {...});

// Unsubscribe

// jQuery: $(obj).off('channel');
$(el).off('/login');

// Dojo: dojo.unsubscribe(handle);
dojo.unsubscribe(handle);

// YUI: el.detach('channel');
el.detach('/login');


// Vanilla JS Publish / Subscribe implementation

var pubsub = {};

(function (myObject) {
    // Storage for topics that can be broadcast
    // or listened to
    var topics = {};

    // A topic identifier
    var subUid = -1;

    // Publish of broadcast events of interest
    // with specific topic name and arguments
    // such as the data to pass along
    myObject.publish = function (topic, args) {
        if (!topics[topic]) {
            return false;
        }

        var subscribers = topics[topic],
            len = subscribers ? subscribers.length : 0;

        while (len--) {
            subscribers[len].func(topic, args);
        }

        return this;
    };

    // Subscribe to events of interest
    // with a specific topic name and a
    // callback function, to be executed
    // when the topic / event is observed
    myObject.subscribe = function (topic, func) {
        if (!topics[topic]) {
            topics[topic] = [];
        }

        var token = (++subUid).toString();
        topics[topic].push({
            token: token,
            func: func
        });
        return token;
    };

    // Unsubscribe from a specific
    // topic, based on a tokenized reference
    // to the subscription
    myObject.unsubscribe = function (token) {
        for (var m in topics) {
            if (topics[m]) {
                for (var i = 0, j = topics[m].length; i < j; i++) {
                    if (topics[m][i].token === token) {
                        topics[m].splice(i, 1);
                        return token;
                    }
                }
            }
        }

        return this;
    };
}(pubsub));

// Another simple message handler

// A simple message logger that logs any topics and data received
// through our subscriber
var messageLogger = function (topics, data) {
    console.log('Logging: ' + topics + ': ' + data);
};

// Subscribers listen for topics they have subscribed to and
// invoke a callback function (e.g. messageLogger) once a new
// notification is broadcast on that topic
var subscription = pubsub.subscribe( 'inbob/newMessage', messageLogger );

// Publishers are in charge of publishing topics or notifications of
// interest to the application e.g:

pubsub.publish( 'inbox/newMessage', 'hello world!' );

// or
pubsub.publish( 'inbox/newMessage', ['test', 'a', 'b', 'c'] );

// or
pubsub.publish( 'inbox/newMessage', {
    sender: 'hello@google.com',
    body: 'Hey again!'
});

// We can also unsubscribe if we no longer wish for our subscriberes
// to be notified
pubsub.unsubscribe( subscription );

// Once unsubscribed, this for example won't result in our
// messageLogger being executed as the subscriber is
// no longer listening
pubsub.publish( 'inbox/newMessage', 'Hello! are you still there?' );