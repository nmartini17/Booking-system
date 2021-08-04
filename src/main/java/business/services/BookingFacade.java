package business.services;

import business.entities.Booking;
import business.entities.User;
import business.exceptions.UserException;
import business.persistence.BookingMapper;
import business.persistence.Database;

import javax.servlet.http.HttpSession;
import java.util.List;

public class BookingFacade {
    private BookingMapper bookingMapper;

    public BookingFacade(Database database) {
        this.bookingMapper = new BookingMapper(database);
    }

    public List<Booking> getAllBookings() throws UserException {
        return bookingMapper.getAllBookings();
    }

    public List<Booking> getAllActiveBookings() throws UserException {
        return bookingMapper.getAllActiveBookings();
    }

    public void itemReturned(int item_id) throws UserException{
        bookingMapper.itemReturned(item_id);
    }

}
