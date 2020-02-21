
NAME = avaj-launcher





all:
	make $(NAME)

$(NAME):
	find . -name \*.java | cut -b 3- 	> sources.txt
	javac @sources.txt

clean:
	find . -name \*.class -type f -delete

#fclean: clean
#	rm -f $(NAME)

re: clean all