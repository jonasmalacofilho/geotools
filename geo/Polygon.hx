package geo;
import geo.units.*;
import haxe.ds.Vector;

@:allow(geo) class Polygon<Pos : Location>
{
    private var data:Vector<Pos>;
    
	static inline var R = 6371e3;
    static inline var toRad = 0.017453292519943295;
  
    public function new(data)
    {
        this.data = data;
    }

    @:arrayAccess inline public function get(at:Int):Pos
    {
        if (at < 0)
        {
            at += data.length;
        }
        else if (at >= data.length)
        {
            at -= data.length;
        }
        return data[at];
    }

    public function area():SquaredMeters
    {
        var a = 0.;
        for (i in 0...data.length)
        {
            a += Math.sin(get(i).lat*toRad)*(get(i + 1).lon*toRad - get(i - 1).lon*toRad);
        }
        return Math.abs(a)*R*R/2;
    }

    public function perimeter():Meters
    {
        // TODO
        return null;
    }

    public function centroid():Pos
    {
        // TODO
        return null;
    }

    // Create a polygon from an array of locations;
    // the first vertex need not to be duplicated at the end
    inline public static function fromArray<Pos:Location>(arr:Array<Pos>):Polygon<Pos>
    {
        if (arr.length < 2)
            throw "Number of locations is not sufficient to define a Polygon";
        return new Polygon(Vector.fromArrayCopy(arr));
    }

}

