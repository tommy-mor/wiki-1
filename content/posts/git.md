+++
title = "Git"
author = ["Jacob Chvatal"]
lastmod = 2020-11-11T08:36:12+01:00
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


## Organization Thoughts {#organization-thoughts}

github organization:

-   one repo per course - as most courses require partner work

= repo for coding challenge practice problems

-   managing research notes: ??? i am thinking a single org file for all of this
-   - that is, an org file in each project for the research notes pertaining to that project,
-   - and anotherorg file for misc. research ?? i will have to see how my research is used

<https://danieltakeshi.github.io/2017/07/15/how-i-organize-my-github-repositories/>


## Rewriting {#rewriting}

It's a good idea to reformat commits to make them more readable.

```sh
git reset HEAD~${number of commits to go back}
```


## Tricks {#tricks}

<http://joeyh.name/blog/entry/how%5Fto%5Fpublish%5Fgit%5Frepos%5Fthat%5Fcannot%5Fbe%5Frepublished%5Fto%5Fgithub/> :: cheeky way to abuse DMCA to avoid GitHub using your Git repos
