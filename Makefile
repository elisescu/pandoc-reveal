SLIDES = slides.html

all: $(SLIDES)
	@echo "Building these slides: " $^

clean:
	rm -f $(SLIDES)

%.html: %.md
	@echo "Making slide " $<
	pandoc -t html5 --template=template.html vars.yaml -s --mathjax -i -t revealjs $< -o $@
