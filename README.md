# Python App

This README will cover the task, what I did and how I went about it


## The Task

### Python App Pipeline
* Create a `development` environment using Vagrant and provision it with Chef such that it can run the application and tests successfully.
* Create an AMI using packer and chef that is capable of running the application and configure Jenkins to use this as a slave.
* Create a Jenkins job that listens for `PULL-REQUESTS` to your `dev` branch on your repo and starts a testing job.
* Tests should be run on the application on the slave node, if successfully code should be merged to the `master` branch.
* Create a job that builds your AMI when all tests have passed using **Packer**.

### Chef Python Cookbook Pipeline
* Create a `development` pipeline for your Python cookbook.
* Create a Jenkins job that listens for `PULL-REQUESTS` to your `dev` branch on your Python Cookbook repo and starts a testing job.
* Run tests using Chef Kitchen in the Cloud - `A test slave will be needed for this.`
* Create a job that will merge your changes to your configuration to the master branch which can then be used by the pipeline above.

### Trello

Trello is going to be your `Project Management` tool. The communication that you make through here is a vital activity that promotes effective traceability across the project. Something to think about is what would happen if someone is away from the office on holiday. `Would anyone be able to  pick up the work just by reading whats happening on Trello?` this is your aim.

#### Trello Deliverables

1. `DOR (Definition of Ready)` - Your `Sprint` cannot start until all your stories meet the definition of ready. This will be done during you `Planning` session. They include...
    1. Task has a well written `Description`
    2. Task has `Acceptance criteria` (built by you)
    3. Task has a `Task Point` (Fibonacci) (optional) 1 2 3 5 8 13
    4. Task has a `Priority`(built from task point)
    5. Task has an `Assignee` (you)
    6. Task has an `Epic` link (optional)

2. `DOD (Definition of Done)` - You need to define as a group a `definition of done` that you agree are the things that need to be done for each story before they are done...

  `**For Example**`:

    1. Meets the acceptance criteria?
    2. Has been reviewed by another member of the team?
    3. Has been reviewed by your trainer?
    4. It has been tested?
    5. Documentation has bee written?

3. `Progress Tracking` - Columns should be set out as following. If you trainer looks at this board they should be able to see the progress through this board by checking what is progress, what is in review etc? This will be regularly checked.

4. `Comments` - Comments should be written in the appropriate card to explain your progress and any blockers.


### Trello

My Trello - https://trello.com/c/ktLvCKTC/3-create-ami-using-packer-and-chef

I used a Trello board to organise the task into smaller objectives which I could then run in daily sprints. I also added tags, such as Python App and Python Cookbook so knew what stage of the project each objective was at.

Each objective also has a more detailed description inside it along with a checklist acting as my acceptance criteria so I knew 
