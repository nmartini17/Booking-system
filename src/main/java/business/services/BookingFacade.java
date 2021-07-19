package business.services;

import business.entities.Booking;
import business.exceptions.UserException;
import business.persistence.BookingMapper;
import business.persistence.Database;

public class BookingFacade {
    private BookingMapper bookingMapper;

    public BookingFacade(Database database) {
        this.bookingMapper = new BookingMapper(database);
    }

    public Booking insertIntoBooking(int id, int days, String comment, boolean booking_status, int item_id) throws UserException {
        Booking booking = new Booking(id, days, comment, booking_status, item_id);
        booking = bookingMapper.insertIntoBooking(booking);
        return booking;
    }
}
