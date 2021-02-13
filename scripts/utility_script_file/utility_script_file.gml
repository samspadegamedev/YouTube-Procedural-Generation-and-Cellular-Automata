// Utility Script File

function map_value(_value, _current_lower_bound, _current_upper_bound, _desired_lowered_bound, _desired_upper_bound) {
	return (((_value - _current_lower_bound) / (_current_upper_bound - _current_lower_bound)) * (_desired_upper_bound - _desired_lowered_bound)) + _desired_lowered_bound;
}


function approach_value(_start, _end, _shift) {
    if (_start < _end) {
        return min(_start + _shift, _end); 
    } else {
        return max(_start - _shift, _end);
    }
}









