EPUB_FILES = mimetype content.opf index_split_000.html titlepage.xhtml cover.jpeg index_split_001.html META-INF/container.xml stylesheet.css toc.ncx
EPUB_ARCHIVE = out-of-the-tar-pit.epub

$(EPUB_ARCHIVE) : $(EPUB_FILES)
	zip -X $@ $^

clean:
	rm $(EPUB_ARCHIVE)