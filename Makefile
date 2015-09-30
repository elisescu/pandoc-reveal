SLIDES = slides.html

all: $(SLIDES)
	@echo "Building these slides: " $^

%.html: %.md
	@echo "Making slide " $<
	pandoc -s --mathjax -i -t revealjs $< -o $@
