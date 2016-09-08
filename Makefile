
all:
	swig -python test.i 
	gcc -c test.c
	gcc -c test_wrap.c -I/usr/local/Cellar/python/2.7.12/Frameworks/Python.framework/Versions/2.7/include/python2.7/
	gcc -shared -o _test.so test.o test_wrap.o -lpython
	install_name_tool -change /System/Library/Frameworks/Python.framework/Versions/2.7/Python /usr/local/Cellar/python/2.7.12/Frameworks/Python.framework/Versions/Current/lib/libpython2.7.dylib _test.so
