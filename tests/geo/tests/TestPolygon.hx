package geo.tests;
import utest.Assert;
import geo.Units;
import geo.*;

class TestPolygon
{

    public function new()
    {
    }

    public function test_area()
    {
        var someSquare = [new Location(-43.18792455337744229, -22.89931164443774136),new Location(-43.18781080775143266, -22.89941368802632127),new Location(-43.18760342711284039, -22.89960248126682174),new Location(-43.18758510088051139, -22.89960304001046154),new Location(-43.18757676486696084, -22.89958570474257016),new Location(-43.18758466498378112, -22.89956530066893947),new Location(-43.18766349530243076, -22.89940163896350001),new Location(-43.18769673862234271, -22.89925720170830914),new Location(-43.18771917954921236, -22.89920366667062979),new Location(-43.18776190064600229, -22.89918606676796031),new Location(-43.18780824562457354, -22.89919204412542086),new Location(-43.18789396272590153, -22.89925138111430059),new Location(-43.18792883139189343, -22.89929215945734953),new Location(-43.18792455337744229, -22.89931164443774136)];
        
        //var someSquare = [new Location(0, 0), new Location(1, 0), new Location(1, 1), new Location(0, 1)];
        var polygon = Polygon.fromArray(someSquare);
        trace("area in km^2: " + polygon.area().float()*1e-6);
        trace("area in m^2: " + polygon.area().float());
    }

    public function test_get()
    {
        var loc0 = new Location(0, 0);
        var loc1 = new Location(1, 1);
        var loc2 = new Location(2, 2);
        var loc3 = new Location(3, 3);
        var polygon = Polygon.fromArray([loc0, loc1, loc2, loc3]);
        Assert.equals(loc3, polygon.get(3));
        Assert.equals(loc0, polygon.get(4));
        Assert.equals(loc1, polygon.get(5));
        Assert.equals(loc3, polygon.get(-1));
        Assert.equals(loc2, polygon.get(-2));
    }

}

