#!/bin/python
import json
import time

out = [{},{}]
head = {}
head['version'] = 1
print(json.dumps(head))
print('[')
print('[]')

while True:
	out[0]['full_text'] = time.strftime('%Y-%m-%d %H:%M:%S', time.gmtime())
	out[0]['color'] = '#e68a00'
	out[1]['full_text'] = ''

	print(','+json.dumps(out))

