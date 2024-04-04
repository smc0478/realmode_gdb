#!/bin/bash
argv=("$@")

gdb -ix ./gdb_init_real_mode.txt 				\
	-ex 'set tdesc filename target.xml'			\
	-ex 'break *0x7C00'					\
	-nx							\
	${argv[@]:1}

