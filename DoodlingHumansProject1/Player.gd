extends Actor

var input_direction: Vector2
var is_charging: bool
var roll_str: float
var roll_cooldown: float

func _ready() -> void:
	input_direction = Vector2.ZERO
	is_charging = false

func _physics_process(delta: float) -> void:
	
	input_direction = get_direction_input()
	is_charging = get_charge_input()
	
	if is_charging == true:
		roll_str = calc_roll_charge(roll_str)
	
	_velocity = calc_velocity(_velocity, input_direction, is_charging, roll_str)
	
	pass

func calc_velocity(old_vel: Vector2, input_dir: Vector2, charging: bool, roll_str: float) -> Vector2:
	var new_vel = old_vel
	# have a short timer where the rolling accelerates after releasing the charge, then start the line below this one
		# if roll_str > 0, decr roll_str based on time elapsed since roll started
	
	return new_vel

func get_direction_input() -> Vector2:
	#jump will be very simple, no differing heights but maybe head-bounce
	return Vector2.ZERO #placeholder

func get_charge_input() -> bool:
	if roll_cooldown == 0.0:
		 pass #get input, placeholder
	return false #placeholder

func calc_roll_charge(roll_str: float) -> float:
	#if charge time is < max, add to roll_str based on time elapsed since charge started
	return 0.0  #placeholder
