package web.commands;

import business.entities.Booking;
import business.entities.User;
import business.exceptions.UserException;
import business.persistence.BookingMapper;
import business.services.BookingFacade;
import business.services.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.time.LocalDate;

public class BookingCommand extends CommandProtectedPage{

    public BookingCommand(String pageToShow, String role) {
        super(pageToShow, role);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws UserException {
        return pageToShow;
    }
}
