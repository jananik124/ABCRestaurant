package com.restaurant.service;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;  
import com.restaurant.model.UserModel;
import com.testaurant.service.UserService;

public class UserAuthenticationTest {

    private final UserService userService = new UserService();

    @Test
    public void testUserRegistration() {
        UserModel user = new UserModel();
        user.setName("sam");
        user.setEmail("sam@gmail.com");
        user.setPassword("123");
        boolean isRegistered = userService.registerUser(user);
        assertTrue(isRegistered);
    }

    @Test
    public void testUserLogin() {
        UserModel user = new UserModel();
        user.setName("customer");
        user.setEmail("Aruni@gmail.com");
        user.setPassword("1234");
        userService.registerUser(user);

        UserModel loggedInUser = userService.loginUser("Aruni@gmail.com", "1234");
        assertNotNull(loggedInUser);
        assertEquals("Aruni@gmail.com", loggedInUser.getEmail());
    }

   

    @Test
    public void testUserRegistrationWithInvalidData() {
        UserModel user = new UserModel();
        user.setName("Janani");
        user.setEmail(""); // Email is empty
        user.setPassword("1243");
        assertFalse(userService.registerUser(user)); // Assuming registration should fail with empty fields
    }

    @Test
    public void testUserLoginWithIncorrectPassword() {
        UserModel user = new UserModel();
        user.setName("customer");
        user.setEmail("testuser@example.com");
        user.setPassword("correctpassword");
        userService.registerUser(user);

        UserModel loggedInUser = userService.loginUser("testuser@example.com", "wrongpassword");
        assertNull(loggedInUser); // Login should fail with incorrect password
    }

    @Test
    public void testUserLoginWithNonExistentUser() {
        UserModel loggedInUser = userService.loginUser("nonexistent@example.com", "password");
        assertNull(loggedInUser); // Login should fail with non-existent email
    }

    @Test
    public void testUserRegistrationWithEmptyFields() {
        UserModel user = new UserModel();
        user.setName(null); // Null value for name
        user.setEmail(null); // Null value for email
        user.setPassword(null); // Null value for password
        assertFalse(userService.registerUser(user)); // Assuming registration should fail with null values
    }
}
