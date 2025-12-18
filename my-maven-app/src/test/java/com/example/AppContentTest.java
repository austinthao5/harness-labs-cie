package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class AppContentTest {

    @Test
    void messageShouldContainHello() {
        assertTrue(App.message().contains("Hello"));
    }
}
