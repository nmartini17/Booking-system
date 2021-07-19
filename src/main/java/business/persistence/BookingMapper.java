package business.persistence;

import business.entities.Booking;
import business.entities.User;
import business.exceptions.UserException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookingMapper {
    Database database;

    public BookingMapper(Database database) {
        this.database = database;
    }

    public Booking insertIntoBooking(Booking booking) throws UserException
    {
        try (Connection connection = database.connect())
        {
            String sql = "INSERT INTO `booking`.`booking`"+
                    "(users_id, booking_date, days, comment, booking_status, item_id)"+
                    "VALUES (?,CURRENT_TIMESTAMP(),?,?,?,?);";

            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS))
            {
                    ps.setInt(1, booking.getId());
                    ps.setInt(2, booking.getDays());
                    ps.setString(3, booking.getComment());
                    ps.setBoolean(4, booking.isBooking_status());
                    ps.setInt(5, booking.getItem_id());

                    ps.execute();
                    ResultSet res = ps.getGeneratedKeys();
                    res.next();
            }
            catch (SQLException ex)
            {
                throw new UserException(ex.getMessage());
            }
        }
        catch (SQLException ex)
        {
            throw new UserException(ex.getMessage());
        }
        return booking;
    }

    public List<Booking> getAllBookings() throws UserException {
        List<Booking> bookingList = new ArrayList<>();

        try (Connection connection = database.connect()) {
            String sql = "SELECT * FROM booking";

            try (PreparedStatement ps = connection.prepareStatement(sql)) {

                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    int id = rs.getInt("users_id");
                    Date booking_date = rs.getDate("booking_date");
                    int days = rs.getInt("days");
                    String comment = rs.getString("comment");
                    boolean booking_status = rs.getBoolean("booking_status");
                    int item_id = rs.getInt("item_id");

                    Booking booking = new Booking(id, booking_date, days, comment, booking_status, item_id);
                    booking.setId(id);
                    bookingList.add(booking);
                }
            } catch (SQLException ex) {
                throw new UserException(ex.getMessage());
            }
        } catch (SQLException ex) {
            throw new UserException("Couldn't reach booking database");
        }
        return bookingList;
    }
}