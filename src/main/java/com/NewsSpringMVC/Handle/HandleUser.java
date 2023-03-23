package com.NewsSpringMVC.Handle;

import java.security.SecureRandom;
import java.math.BigInteger;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class HandleUser {

    public SecureRandom random = new SecureRandom();

    // Hàm tạo random ra token 
    public String generateToken(int length) {
        byte[] bytes = new byte[length];
        random.nextBytes(bytes);
        return new BigInteger(1, bytes).toString(16);
    }

    // Hàm lấy ra ngày tháng năm hiện tại
    public static String getCurrentDateTimeFormatted() {
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedDateTime = now.format(formatter);
        return formattedDateTime;
    }
}
