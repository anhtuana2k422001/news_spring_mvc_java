package com.NewsSpringMVC.Dao;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.NewsSpringMVC.Entity.Contact;
import com.NewsSpringMVC.Mapper.ContactMapper;

@Repository
@SuppressWarnings({"Convert2Diamond", "UnusedAssignment"})
public class ContactDao {
	@Autowired
    JdbcTemplate _jdbcTemplate;
	
	public List<Contact> getDataContact(){
        List<Contact> listContact = new ArrayList<Contact>();
        String sql = "SELECT * FROM contacts;";
        listContact = _jdbcTemplate.query(sql, new ContactMapper());
        return listContact;
    }
}
