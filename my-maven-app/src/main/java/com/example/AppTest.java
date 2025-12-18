package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class AppTest {

    // 1️⃣ Message content test
    @Test
    void messageShouldBeCorrect() {
        assertEquals("Hello from Maven + Docker!", App.message());
    }

    // 2️⃣ Message should not be null
    @Test
    void messageShouldNotBeNull() {
        assertNotNull(App.message());
    }

    // 3️⃣ Message should not be empty
    @Test
    void messageShouldNotBeEmpty() {
        assertFalse(App.message().isEmpty());
    }

    // 4️⃣ Message should contain expected word
    @Test
    void messageShouldContainHello() {
        assertTrue(App.message().contains("Hello"));
    }

    // 5️⃣ App class should load (smoke test)
    @Test
    void appClassShouldLoad() {
        assertDoesNotThrow(() -> Class.forName("com.example.App"));
    }
}
