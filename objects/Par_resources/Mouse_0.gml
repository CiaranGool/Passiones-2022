/// @description Insert description here
// You can write your code in this editor
switch (object_index) {
    case ResFlint:
        global.flint_count +=irandom_range(4,8);
        break;
    case ResFood:
	global.food_count +=irandom_range(2,6);
        break;
	case ResHide:
	global.hide_count +=irandom(5);
        break;
	case ResStone:
	global.stone_count +=irandom_range(4,8);
        break;
	case ResWood:
	global.wood_count +=irandom(5);
        break;      
}
	instance_destroy();