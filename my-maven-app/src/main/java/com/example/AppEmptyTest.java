package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class AppEmptyTest {

    @Test
    void messageShouldNotBeEmpty() {
        assertFalse(App.message().isEmpty());
    }
}
