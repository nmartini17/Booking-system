package business.services;

import business.entities.Booking;
import business.entities.User;
import business.exceptions.UserException;
import business.persistence.BookingMapper;
import business.persistence.Database;

import java.util.List;

public class BookingFacade {
    private BookingMapper bookingMapper;

    public BookingFacade(Database database) {
        this.bookingMapper = new BookingMapper(database);
    }

    public List<Booking> getAllBookings() throws UserException {
        return bookingMapper.getAllBookings();
    }
}
