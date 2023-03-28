package com.NewsSpringMVC.Handle;

import java.security.SecureRandom;
import java.math.BigInteger;
import java.text.ParseException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

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
    
    // Định dạng này tháng
    public static String formatDate(String inputDateString) {
      SimpleDateFormat inputDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
      Date date = null;
        try {
            date = inputDateFormat.parse(inputDateString);
        } catch (ParseException ex) {
            Logger.getLogger(HandleUser.class.getName()).log(Level.SEVERE, null, ex);
        }
      SimpleDateFormat outputDateFormat = new SimpleDateFormat("dd-MM-yyyy");
      String outputDateString = outputDateFormat.format(date);
      return outputDateString;
   }
}
