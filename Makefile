ALL = README.ml
%.ml :: %.org
	pandoc -s -f org -t markdown_github -o $@ $<
all: $(ALL)
README.ml: README.org
