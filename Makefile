PYTHON=`which python`

all:
	dpkg-buildpackage --source-option="-I .git"
	lintian

clean: 
	$(PYTHON) setup.py clean
	$(MAKE) -f $(CURDIR)/debian/rules clean
	rm -rf build/
	find . -name '*.pyc' -delete
