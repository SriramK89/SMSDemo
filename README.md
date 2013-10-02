This project uses **ipipi.com** website to send SMS.

The basic concept of sending SMS using this site is given [here](http://www.ipipi.com/help/send_text_message_sms_from_application.htm).

After signing up with the website(its free and they give 5 free SMS), you can clone this project and customize for your account.

Just checkout the `development.rb` file. It will have the **username** and **password** parameters to be set.

It seems that the messages have a fixed time slot to be sent for a day. The first trial was done in night. The sent SMS was found in the ipipi.com site's *Sent items* under my account. The SMS was delivered on the next day morning around 9 AM.

Though international numbers can also be messaged, this application has been designed to send SMS only to India numbers. You will be providing a ten digit number in the browser and the mailer will prepend India's country code `91` to the number and will send it.