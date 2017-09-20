for i = 1 to $.count do
(
    cur_angle = quatToEuler (inverse $[i].rotation) --(eulerAngles 0 0 0)
	postion = $[i].pos
	$[i].rotation = eulerAngles 0 0 0
	rotate $[i] (angleaxis (floor(cur_angle.x + 0.5)) [1,0,0])
	rotate $[i] (angleaxis (floor(cur_angle.y + 0.5)) [0,1,0])
	rotate $[i] (angleaxis (floor(cur_angle.z + 0.5)) [0,0,1])
	new_position = [(floor (postion.x + 0.5)), (floor (postion.y + 0.5)),(floor (postion.z + 0.5))]
	$[i].pos = new_position
	cur_angle = quatToEuler (inverse $[i].rotation) --(eulerAngles 0 0 0)
	postion = $[i].pos
	)
