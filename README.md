# mtchmkr
A Rails application to schedule one on ones

## Description

Here at Goldbely, we have weekly one-on-one meeting. One week you could meet with a fellow team member, the next, our CEO: Joe.

We need a way to automatically figure out who should meet with who each week. Your mission is to add such a feature to this Rails application, following these rules:

1. Each week, everyone should meet with another person at the company.
2. If there are an odd number of people, it's ok for one person to be left out per week.
3. By the end of the scheduled time, each participant should have met with every other participant.

For example, if there are 4 Participants in the system ("Joe", "Vanessa", "Trevor", and "Gillman'), your results should look something like this:

![screen shot 2016-06-22 at 1 42 33 pm](https://cloud.githubusercontent.com/assets/766658/16286821/b5bb9806-3893-11e6-91cb-14bece562b45.png)

Also, since we're expecting to hire more people soon, it should be able to create multiple participants at once. Please provide a way so that a user can input a text like "Aaliyah, Shae, Martin" and generate three participants at once.

# Recap

1. Provide a page that lists the one on one schedule for all Participants in the database
2. Provide a way to create multiple Participants at once using a comma-delimited string

---

# Dev Dependencies

This project has a few dependencies:

- Ruby 2.3.1
- NodeJS
- Postgres 9.4 (any 9.x version should be okay)

How you want to handle them is entirely up to you. If you're familiar with Vagrant we have included a Vagrantfile that should get you up and running. There is also a [branch with configs for Docker][docker] if you're into that.

[docker]: https://github.com/Goldbely/mtchmkr/tree/docker
