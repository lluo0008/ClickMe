#Click Me!

##Project Info
Welcome to the Click Me project, developed as part of the Sillyhacks Hackathon. The goal of this project changed quite a bit throughout the development process, 
as we realized again and again that some of our initial ideas were too difficult to implement in the short timeframe. 

###Initial idea
Our initial idea was to create a Java web app and deploy it using AWS Elastic Beanstalk. The Java web app itself would be a button that says "click me", but it actively 
avoids the user's cursor by gaining velocity as the cursor moves closer to it. The closer the cursor is, the faster the button gets, making it effectively impossible to
click the button. This idea was built first in processing, and we also added more sophisticated methods for the button to avoid the cursor. 

###Second idea
Upon trying to translate the processing code into a Java dynamic web project, we quickly realized that it was going to be very difficult to create moving components and 
imitating physics in Java, which is why we decided to go for a more simple web app that has much less movement and complexity involved. The second idea is a button that
the user will try to click, but once it gets clicked it will reappear at a random location. As we flushed out this idea more, we quickly realized that this could be a way to
practice one's aim with a mouse cursor. This is when we started to develop the application as an "Aim Trainer", and included many features to make it more interactive such as
a timer, a point system, as well as the target getting smaller every time it reappears to increase the difficulty. 
