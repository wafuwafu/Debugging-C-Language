# -*- coding: utf-8 -*-

import test

ret=0

def check_func(a):
	ret=0
	ret=test.func(a)
	print "input a= %d: return = %d " % (a,ret)
	if ret == a*a:
        	print "OK!"
	else:
        	print "NG"

a=0
ret= check_func(a)

a=2
ret=check_func(a)

a=10
ret=check_func(a)

