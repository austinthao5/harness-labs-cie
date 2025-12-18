package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class AppNullTest {

    @Test
    void messageShouldNotBeNull() {
        assertNotNull(App.message());
    }
}
