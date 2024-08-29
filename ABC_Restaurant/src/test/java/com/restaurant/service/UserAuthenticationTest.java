package com.restaurant.service;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;  // Ensure this import is correct
import com.restaurant.model.UserModel;                 // Correct import for UserModel class
import com.testaurant.service.UserService;        // Correct import for UserService class

public class UserAuthenticationTest {

    @Test
    public void testUserRegistration() {
        UserService userService = new UserService();
        UserModel user = new UserModel();
        user.setName("customer");
        user.setEmail("Sakuni@gmail.com");
        user.setPassword("123");
        boolean isRegistered = userService.registerUser(user);
        assertTrue(isRegistered);
    }

    @Test
    public void testUserLogin() {
        UserService userService = new UserService();
        // Register the user first
        UserModel user = new UserModel();
        user.setName("customer");
        user.setEmail("Aruni@gmail.com");
        user.setPassword("1234");
        userService.registerUser(user);

        UserModel loggedInUser = userService.loginUser("Aruni@gmail.com", "1234");
        assertNotNull(loggedInUser);
        assertEquals("Aruni@gmail.com", loggedInUser.getEmail());
    }

    
}
