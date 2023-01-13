///@func                        chance(number)
///@desc                        Returns a false or true depending if the rolled side is 1.
///@arg                {Real}        number Sides.
function chance(number)
{
    //Chance calculation. ©Roderick F 2015
    var n=irandom_range(1,number);
    if (n==1) then {
        return true;
    }
        else {
            return false;
    }
}