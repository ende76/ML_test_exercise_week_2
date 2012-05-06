ML_test_exercise_week_2
=======================

Test cases for Machine Learning Programming Exercises - IV. Linear Regression with Multiple Variables (Week 2) at https://class.coursera.org/ml/assignment/index

Installation
------------

Clone or download the project into the folder where you keep the files for the Machine Learning Programming Exercises for Week 2.

Your exercise files are typically in a folder named `ex1/`.

* If you clone the project, you'll have a folder `ex1/ML_test_exercise_week_2/`,
* If you download a zip file and unpack it in `ex1`, it'll be something like `ex1/ende76-ML_test_exercise_week_2-cd2dfad/`.

That's it, installation done.

How to use
----------

Change into your `ex1/` dir and start octave.

In octave's shell, use the command

* `runtests('./ML_test_exercise_week_2/')`, or – if you used the zip file –
* `runtests('./ende76-ML_test_exercise_week_2-cd2dfad/')`, or similar.

This will run all tests defined in the files in that folder.
Whenever a test fails due to a known mistake, it should give you a `RECOMMENDATION` telling you how to fix your problem.
At this time, there is a lot of output from octave that is hard to avoid which might be confusing.
Just look for the line with `RECOMMENDATION`, which should be all you need to care about.

Of course, not all possible mistakes are known. For those, we have some general purpose test cases, that hopefully catch all other errors. In such a case, we might not know what went wrong in your implementation, we just know that the result you're getting is not the result that is expected.

In such a case, it would be nice if you let us know that you ran into a general-purpose-mistake, and let us analyze your script, so that we can figure out the mistake, come up with a helpful hint for a solution, and design a test case that checks specifically for that mistake so that other students can learn from it. 