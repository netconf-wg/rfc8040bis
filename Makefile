xml2rfc ?= xml2rfc

draft := rfc8040
next := $(draft)

default: $(next).txt $(next).html

%.txt: %.xml
	$(xml2rfc) --v3 $< -o $@ --text

%.html: %.xml
	$(xml2rfc) --v3 $< -o $@ --html

clean:
	-rm -f $(next).txt $(next).html
