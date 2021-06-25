package business.persistence;

import business.entities.Item;
import business.entities.User;
import business.exceptions.UserException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ItemMapper {

    Database database;

    public ItemMapper(Database database) {
        this.database = database;
    }

    public List<Item> getAllItems() throws UserException {
        List<Item> itemList = new ArrayList<>();

        try (Connection connection = database.connect()) {
            String sql = "SELECT * FROM item";

            try (PreparedStatement ps = connection.prepareStatement(sql)) {

                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    int id = rs.getInt("item_id");
                    String name = rs.getString("item_name");
                    String description = rs.getString("description");
                    int roomNumber = rs.getInt("room_number");
                    String itemType = rs.getString("item_type");
                    String itemTag = rs.getString("item_tag");
                    Item item = new Item(id, name, description, roomNumber, itemType, itemTag);
                    item.setId(id);
                    itemList.add(item);
                }
            } catch (SQLException ex) {
                throw new UserException(ex.getMessage());
            }
        } catch (SQLException ex) {
            throw new UserException("Connection to database could not be established");
        }
        return itemList;
    }
}
