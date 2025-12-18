package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class AppMessageTypeTest {

    @Test
    void messageShouldReturnString() {
        Object result = App.message();
        assertTrue(result instanceof String);
    }
}
