+++
title = "Resume"
author = ["Jacob Chvatal"]
lastmod = 2020-07-12T22:22:56-04:00
slug = "Resume"
draft = false
+++

tags
: [employment]({{< relref "employment" >}})


## Optimizing Resume {#optimizing-resume}


### Parsing {#parsing}

You can see how common recruitment tools parse your resume.
An optimally parsed resume will ease autofilled applications at the least,
and at best will get your resume to more recruiters at a company.

To do so, you can do the following in any browser with dev tools:

1.  Find a job posting that makes use of [lever](https://jobs.lever.co)'s recruiting software (e.g. Coursera).
2.  Progress to the initial lever page.
    This page should have a 'jobs.lever.co' domain and fields for basic personal information,
    including resume submission.
3.  Open the developer console and switch to the 'Network' tab.
4.  Upload your resume to the application.
    You should see a 'parseResume' HTTP POST request.
    Double-click the request and you can view your resume as parsed
    along with a discription and some preliminary analytics information.
