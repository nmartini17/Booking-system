package web.commands;

import business.entities.Booking;
import business.entities.User;
import business.exceptions.UserException;
import business.persistence.BookingMapper;
import business.services.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BookingResult extends CommandProtectedPage {

    BookingMapper bookingMapper;
    UserFacade userFacade;

    public BookingResult(String pageToShow, String role) {
        super(pageToShow, role);
        bookingMapper = new BookingMapper(database);
        userFacade = new UserFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        HttpSession session = request.getSession();
        //Det er i en try catch, da jeg parser en int til en string, det kan gå galt.
        try {
            int item_id = Integer.parseInt(request.getParameter("item_id"));
            int days = Integer.parseInt(request.getParameter("days"));
            User user = (User) session.getAttribute("user");
            int id = user.getId();
            boolean booking_status = true;

            String comment = "test";
            bookingMapper.insertIntoBooking(new Booking(id, days, comment, booking_status, item_id));
            userFacade.removePoints(days,id);
        } catch (NumberFormatException e) { throw new UserException("Wrong input type!");
            }
        return pageToShow;
    }
}
