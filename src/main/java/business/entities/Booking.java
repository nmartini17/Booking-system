package business.entities;

public class Booking {

    private int id;
    private String booking_date;
    private int days;
    private String comment;
    private boolean booking_status;
    private int item_id;

    public Booking(int id, int days, String comment, boolean booking_status, int item_id) {
        this.id = id;
        this.days = days;
        this.comment = comment;
        this.booking_status = booking_status;
        this.item_id = item_id;
    }

    public Booking(int id, String booking_date, int days, String comment, boolean booking_status, int item_id) {
        this.id = id;
        this.booking_date = booking_date;
        this.days = days;
        this.comment = comment;
        this.booking_status = booking_status;
        this.item_id = item_id;
    }

    public Booking(int id, boolean booking_status, int item_id) {
        this.id = id;
        this.booking_status = booking_status;
        this.item_id = item_id;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public boolean isBooking_status() {
        return booking_status;
    }

    public void setBooking_status(boolean booking_status) {
        this.booking_status = booking_status;
    }

    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int item_id) {
        this.item_id = item_id;
    }
}