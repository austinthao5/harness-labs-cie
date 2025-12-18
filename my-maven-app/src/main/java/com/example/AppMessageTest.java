package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class AppMessageTest {

    @Test
    void messageShouldBeCorrect() {
        assertEquals("Hello from Maven + Docker!", App.message());
    }
}
