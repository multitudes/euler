# The Euler Project In a Swift Package

The first 100 challenges done in Swift. It is still a work in progress as I am right now still doing the challenges.
The main structure is ready to be used though, and you could add your code and tests forking this repo.

## How to use it

You might need to be on a mac, but it could work on a Linux system with some changes, I did not try.
Once you download the package open it in Xcode clicking on the `Package.Swift` file, or from the terminal:

```bash
cd euler 
# the challenge number is mandatory, the [-s] is optional and will show the solution if entered 
# swift run euler <challenge number> [-s]
# start with 
swift run euler 1
#and run and get the solution
swift run euler 1 [-s]
# you can run the tests!
swift test
```
As you see it works from the command line and in Xcode. In Xcode you will need to edit the scheme to pass command line arguments. `Command-U` will run the tests, `Command-B` to build and `Command-R` to run.

Also it can be compiled as executable with: 

```bash
swift build --configuration release
cp .build/release/euler /usr/local/bin/euler
```

We can now run our script from anywhere using just for instance `euler` with the arguments!

This is thought as an educational project to complete the first 100 days of Euler. The solutions are not provided.
It is meant as a practice repo to store your solutions and become a better coder.

Every challenge has a folder with the challenge+number as a class. Edit that folder and the class to run your challenges

Happy coding! 

<!-- I will add my solution in different branches, so the master branch will be always 'blank' like a canvas.
 -->
