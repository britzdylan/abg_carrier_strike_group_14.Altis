params ["_hashMap", "_key", ["_increment", 1]];
private _current = _hashMap getOrDefault [_key, 0];
_hashMap set [_key, _current + _increment];
_current + _increment // Return new value