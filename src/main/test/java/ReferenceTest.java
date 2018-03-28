/**
 * @author Mr.kekee
 */
public class ReferenceTest {
    public static void recArg(String arg) {
        System.out.println("String:---");
    }

    public static void recArg(Object arg) {
        System.out.println("Object:---");
    }

    public static void main(String[] args) {
        recArg("a");
        recArg("b");

        recArg(11);
        recArg("c");
    }
}
