import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#
if __name__ == "__main__":
	for line in sys.stdin:
		sys.stdout.write(line.split ( ',' )[1].replace ( '\n', '' ) + ',' + line.split ( ',' )[0] + '\n')