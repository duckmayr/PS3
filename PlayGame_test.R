
## PS3 testing
## While not proper automated testing, running these commands will
## demonstrate whether the classes and functions operate as desired.


# First read in the S3 implementation:

source('PlayGameS3.R')

# Make an example door:

exampleDoor <- Door(3)

# Try some door initializations that shouldn't work:

Door('a')
Door(5)
Door(1.3)
Door(c(1, 1))

# And see how the game works (we'll try it 10 times to see different outcomes):

invisible(replicate(10, PlayGame(exampleDoor)))

# Now let's try the S4 implementation:

rm(list=c('Door', 'PlayGame', 'PlayGame.door'))
source('PlayGameS4.R')

# Make an example door:

exampleDoor <- new('door', number=2)

# Try some door initializations that shouldn't work:

new('door', number='a')
new('door', number=5)
new('door', number=1.3)
new('door', number=c(1, 1))

# And see how the game works:

invisible(replicate(10, PlayGame(exampleDoor)))
