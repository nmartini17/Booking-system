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
        request.setAttribute("showbooking", bookingFacade.getAllBookings());
        return pageToShow;
    }
}