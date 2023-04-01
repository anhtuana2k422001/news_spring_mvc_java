package com.NewsSpringMVC.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import com.NewsSpringMVC.Entity.Contact;
import org.springframework.jdbc.core.RowMapper;

public class ContactMapper implements RowMapper<Contact>{
	@Override
    public Contact mapRow(ResultSet rs, int rowNum) throws SQLException {
		Contact contact = new Contact();
		contact.setId(rs.getInt("id")); 
		contact.setFirst_name(rs.getString("first_name"));  
		contact.setLast_name(rs.getString("last_name"));
		contact.setEmail(rs.getString("email"));
		contact.setSubject(rs.getString("subject"));
		contact.setMessage(rs.getString("message"));
		contact.setCreated_at(rs.getString("created_at"));        
		contact.setUpdated_at(rs.getString("updated_at"));
        return contact;
    }
}
