##
# ML QuestionsProject Title
#
# @file
# @version 0.1

.PHONY: default
default: html ;

PANDOCK= $(shell grep alias\ pandock= ~/.bash_aliases | awk -F"'" '{print $$2}')

html:
	$(PANDOCK) -s -c styling.css --metadata title="ML Questions" README.md -o README.html

clean:
	rm -f *.html

# end
