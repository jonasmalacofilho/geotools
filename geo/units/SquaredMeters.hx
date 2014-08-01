package geo.units;

abstract SquaredMeters(Float) from Float
{
    inline public function new(f:Float)
    {
        this = f;
    }

	@:extern @:op(-A) public static function neg(s:SquaredMeters):SquaredMeters;
	@:extern @:op(A+B) public static function add(lhs:SquaredMeters, rhs:SquaredMeters):SquaredMeters;
	@:extern @:op(A-B) public static function sub(lhs:SquaredMeters, rhs:SquaredMeters):SquaredMeters;
    @:extern @:op(A>B) public static function gt(lhs:SquaredMeters, rhs:SquaredMeters):Bool;
    @:extern @:op(A>=B) public static function gte(lhs:SquaredMeters, rhs:SquaredMeters):Bool;
    @:extern @:op(A<B) public static function lt(lhs:SquaredMeters, rhs:SquaredMeters):Bool;
    @:extern @:op(A<=B) public static function lte(lhs:SquaredMeters, rhs:SquaredMeters):Bool;
    @:extern @:op(A==B) public static function eq(lhs:SquaredMeters, rhs:SquaredMeters):Bool;
    
    @:extern inline public function float() return this;
  
    @:extern inline public function toString()
    {
        return '$this(m^2)';
    }

}

