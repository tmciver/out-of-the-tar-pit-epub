EPUB_FILES = 	mimetype \
		content.opf \
		titlepage.html \
		abstract.html \
		section-1.html \
		section-2.html \
		section-3.html \
		section-4.html \
		section-5.html \
		section-6.html \
		section-7.html \
		section-8.html \
		section-9.html \
		section-10.html \
		index_split_000.html \
		index_split_001.html \
		footnotes.html \
		references.html \
		META-INF/container.xml \
		stylesheet.css \
		toc.ncx
EPUB_ARCHIVE = out-of-the-tar-pit.epub

test : $(EPUB_ARCHIVE)
	java -jar lib/epubcheck-3.0b4.jar $(EPUB_ARCHIVE)

$(EPUB_ARCHIVE) : $(EPUB_FILES)
	zip -X $@ $^

clean:
	rm $(EPUB_ARCHIVE)