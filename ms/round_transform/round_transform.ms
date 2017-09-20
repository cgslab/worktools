/*
Creating organization: Forestlight CGSLAB
Created by: Yusuke Yamada
Creation date: 2017-09-19
Mail: y_yamada@cgslab.info
Public repository: https: //github.com/cgslab/worktools
License: This script is constrained to the license of the public repository.
*/
for i = 1 to $.count do
(
    print "---------------------"
	print $[i].name
	cur_angle = quatToEuler (inverse $[i].rotation) --(eulerAngles 0 0 0)
	postion = $[i].pos
	print postion
	print cur_angle
	$[i].rotation = eulerAngles 0 0 0
	rotate $[i] (angleaxis (floor(cur_angle.x + 0.5)) [1,0,0])
	rotate $[i] (angleaxis (floor(cur_angle.y + 0.5)) [0,1,0])
	rotate $[i] (angleaxis (floor(cur_angle.z + 0.5)) [0,0,1])
	new_position = [(floor (postion.x + 0.5)), (floor (postion.y + 0.5)),(floor (postion.z + 0.5))]
	$[i].pos = new_position
	cur_angle = quatToEuler (inverse $[i].rotation) --(eulerAngles 0 0 0)
	postion = $[i].pos
	print postion
	print cur_angle
	)
