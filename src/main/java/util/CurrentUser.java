package util;

import lombok.Data;
import model.User;

public class CurrentUser {
    private static User user;
    public static User getUser(){
        return user;
    }

    public static void setUser(User user) {
        CurrentUser.user = user;
    }
}
