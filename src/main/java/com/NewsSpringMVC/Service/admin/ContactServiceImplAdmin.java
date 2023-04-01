package com.NewsSpringMVC.Service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.NewsSpringMVC.Dao.ContactDao;
import com.NewsSpringMVC.Entity.Contact;

@Service
public class ContactServiceImplAdmin implements IContactServiceAdmin{
	@Autowired
    private ContactDao contactDao;
	
	@Override
	public List<Contact> getDataContact() {
		return contactDao.getDataContact();
	}

}
