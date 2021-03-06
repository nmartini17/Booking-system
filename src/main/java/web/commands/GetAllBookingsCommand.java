package web.commands;

import business.exceptions.UserException;
import business.services.BookingFacade;
import business.services.StudentFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetAllBookingsCommand extends CommandProtectedPage {

    BookingFacade bookingFacade;

    public GetAllBookingsCommand(String pageToShow, String role) {
        super(pageToShow, role);
        bookingFacade = new BookingFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        if (request.getParameter("booking_id")!= null) {
        try {
            bookingFacade.itemReturned(Integer.parseInt(request.getParameter("booking_id")));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        }
        request.setAttribute("showbooking", bookingFacade.getAllActiveBookings());
        return pageToShow;
    }
}