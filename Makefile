EPUB_FILES = 	mimetype \
		META-INF/container.xml \
		OEBPS/content.opf \
		OEBPS/titlepage.html \
		OEBPS/abstract.html \
		OEBPS/section-1.html \
		OEBPS/section-2.html \
		OEBPS/section-3.html \
		OEBPS/section-4.html \
		OEBPS/section-5.html \
		OEBPS/section-6.html \
		OEBPS/section-7.html \
		OEBPS/section-8.html \
		OEBPS/section-9.html \
		OEBPS/section-10.html \
		OEBPS/section-11.html \
		OEBPS/section-12.html \
		OEBPS/footnotes.html \
		OEBPS/references.html \
		OEBPS/stylesheet.css \
		OEBPS/toc.ncx \
		OEBPS/figure1.png \
		OEBPS/figure2.png
EPUB_ARCHIVE = out-of-the-tar-pit.epub

# test : $(EPUB_ARCHIVE)
# 	java -jar lib/epubcheck-4.0.1/epubcheck.jar $(EPUB_ARCHIVE)

$(EPUB_ARCHIVE) : $(EPUB_FILES)
	zip -X $@ $^

clean:
	rm $(EPUB_ARCHIVE)
