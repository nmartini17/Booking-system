package business.persistence;

import business.entities.User;
import business.exceptions.UserException;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.sql.SQLException;
import java.sql.Statement;

import static org.junit.jupiter.api.Assertions.*;

public class OrderMapperTest {

    private final static String DATABASE = "booking";  // Change this to your own database
    private final static String TESTDATABASE = DATABASE + "_test";
    private final static String USER = "dev";
    private final static String PASSWORD = "ax2";
    private final static String URL = "jdbc:mysql://localhost:3306/" + TESTDATABASE + "?serverTimezone=CET&useSSL=false";

    private static Database database;
    private static UserMapper userMapper;
    private static BookingMapper bookingMapper;

    @BeforeAll
    public static void setUpClass() {
        try {
            database = new Database(USER, PASSWORD, URL);
            userMapper = new UserMapper(database);
            bookingMapper = new BookingMapper(database);
        } catch (ClassNotFoundException e) {   // kan ikke finde driveren i database klassen
            fail("Database connection failed. Missing jdbc driver");
        }
    }

    @BeforeEach
    public void setUp() {

            // reset test database
            try ( Statement stmt = database.connect().createStatement() ) {
                stmt.execute("drop table if exists booking_test.booking" );
                stmt.execute("create table " + TESTDATABASE + ".booking LIKE " + DATABASE + ".booking;" );
                stmt.execute(
                    "insert into booking values " +
                    "(1,1,'2021-08-01 16:40:54',2,'Comment1', 1, 1), " +
                    "(2,2,'2021-08-02 13:40:54',4,'Comment2', 1, 5), " +
                    "(3,3,'2021-07-29 12:40:54',5,'Comment3', 1, 6)");
            } catch (SQLException ex) {
            System.out.println( "Could not open connection to database: " + ex.getMessage() );
        }
    }

    @Test
    void changeStatus() throws UserException {
        bookingMapper.itemReturned(1);
        assertEquals(2, bookingMapper.getAllActiveBookings().size());
    }
}
