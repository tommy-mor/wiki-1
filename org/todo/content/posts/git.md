+++
title = "Git"
author = ["Jacob Chvatal"]
lastmod = 2020-10-14T19:07:10+02:00
slug = "git"
draft = false
+++

Git is a popular version control system.


## Tricks {#tricks}


## Writing a Git Commit Message {#writing-a-git-commit-message}

[Article Reference](https://chris.beams.io/posts/git-commit/)

-   Concise and consistent length and form
-   Communicate clear context about a change to fellow developers.
    Ensure that other developers understand **why** a change was made.


### Rules {#rules}

-   Separate subject from body with a blank line
    if the body is to be used.
-   Limit subject line to 50 characters
-   Capitalize subject line
-   Do not end with period
-   Use imperative mood; I 'do' this.
    Rationale: If applied, the commit will change these aspects of the code.
    Git's own built-in conventions use this form.
-   Wrap at 72 characters
-   Use the body to explain 'what' and 'why' as necessary


## Repositories {#repositories}

GitHub
: I use this; Microsoft is bad but the community is good

Sourcehut
: Minimal free software repository. I would use this if the developer weren't an egotistical BDFL.

Gitea
: Open source git repository; self host it
