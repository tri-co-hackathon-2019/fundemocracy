# :zap: :computer: :zap: Tri-Co Hackathon 2019 :zap: :computer: :zap:

## Team Name

Worth K

## Team Members

- Cassandra Stone '20, Swarthmore College
- Calla Bush St George '20, Swarthmore College

## Project Description

Political campaigns today face three majors challenges:
- raising small dollar donations
- fundraising beyond their immediate constituency (especially local campaigns)
- meeting FEC regulations for donation collection

On the flipside, while the everyday person may not be willing to max out a donation to a political candidate, many are interested in making small-dollar donation to candidates who they believe are going to affect change, even if beyond their own district.

We've created an iOS app that allows users to create profile containing all FEC-necessary donor information. They are prompted to rank Congressional policy categories based on their preference. Each day, the app recommends a different candidate from anywhere in the country that has policy preferences most in line with the users' to make a $5 donation towards.

Users must be 18 or older, as per FEC-donation policies. Our target audience is anyone who is interested in politics and expanding their knowledge of candidates accross the US, from city council to Congress. 

Our second target audience is candidates running for office at any level. They are incentivized to promote the app because it increases their chances that people outside their constituency reach may be interested in donating to their campaign. In addition, because we meet FEC donor information policies, they do not have to worry about finance violations. Our database can easily export both user and candidate donation history.

## Protoype Summary

Our prototype app has been built using Xcode, with Swift as our main language.  Our prototype utilizes [Realm](realm.io), an open source dependency, to create and manage our database. So far, our database is capable of maintaining information about Candidate, Donor, and Contribution objects.
We compiled a test collection of Candidates and their policy preferences (by way of random unique number generators). We developed an algorithm that calculates similarities between user and candidate policy preferences, and a page that pulls the candidate with the highest similarity. Once it is a new day (determined by the device's internal clock), the candidate is popped from the stack and the one with the next highest similarity is featured.

## Live URLs

n/a

## Presentation

Google Slides: 
(see video in repo)

## Next Steps

With the time constraint, we were not able to build the payment information collection, as there are security protocols that will need to be implement. There are handy developer tools to use TouchID or FaceID for payment verification, so we may move in that direction in the future.
We also need a proper database of candidates and their policy preferences. We mannually created one looking at three races today, but in the future, we may look into scraping the data from Ballotpedia or another site.
In addition, we were not able to fully test the "Today's Candidate" page, because we did not have time to simulate a new date (the simulation would need to think it is tomorrow for the page to present something new).

## License

*This repository includes an [unlicense](http://unlicense.org/) statement though you may want [to choose a different license](https://choosealicense.com/).*
