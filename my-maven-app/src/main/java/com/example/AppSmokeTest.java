package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class AppSmokeTest {

    @Test
    void appClassShouldLoad() {
        assertDoesNotThrow(() -> Class.forName("com.example.App"));
    }
}
