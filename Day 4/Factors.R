# Day 4: R Data Structures

# Factors - Used to categorize data.
# created using factor() function and provided a vector

genre<- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
genre

levels(genre)

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Other"))

levels(music_genre)
music_genre

length(genre)

genre[4]
genre[3:6]

genre[4] <-"Pop" # supports changing of an item with existing in the levels
genre

music_genre[4] <- "opera" # doesn't support changing of values not specified in the levels
music_genre
