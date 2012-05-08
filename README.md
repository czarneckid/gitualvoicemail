# Gitual Voicemail

It's like voicemail, but for your GitHub project

## Setup

* Sign up for a [Tropo](https://www.tropo.com/) account.
* Create a new [Tropo Application](https://www.tropo.com/applications/).
* Create a new Heroku application on the cedar stack, e.g. `heroku apps:create gitualvoicemail --stack cedar`.
* Modify the repository in `lib/gitualvoicemail.rb`, commit, and push the application to Heroku, `git push heroku master`. 
* Modify URLs powering your app accordingly, e.g. `http://gitualvoicemail.herokuapp.com`.
* Sign up for a Tropo phone number in your area code.
* Call your GitHub repository and have Tropo read the last 5 commits back to you!