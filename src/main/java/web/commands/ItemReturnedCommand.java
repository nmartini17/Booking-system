package web.commands;

import business.exceptions.UserException;
import business.persistence.BookingMapper;
import business.services.BookingFacade;
import business.services.ItemFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ItemReturnedCommand extends CommandProtectedPage {

    BookingFacade bookingFacade;
    BookingMapper bookingMapper;

    public ItemReturnedCommand(String pageToShow, String role) {
        super(pageToShow, role);
        bookingFacade = new BookingFacade(database);
        bookingMapper = new BookingMapper(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        try {
        bookingFacade.itemReturned(Integer.parseInt(request.getParameter("booking_id")));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return pageToShow;
    }
}
