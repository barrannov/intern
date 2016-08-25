package net.proselyte.usermanager.dao;

import net.proselyte.usermanager.people.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao{
    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(user);
        logger.info("User" + user +
                " added");

    }

    @Override
    public void updateUser(User user) {
      /*  Session session = this.sessionFactory.getCurrentSession();
        session.persist(user);
        logger.info("User" + user +
                " update");*/
        // Retrieve session from Hibernate
        Session session = sessionFactory.getCurrentSession();

// Retrieve existing user via id
        User existingUser = (User) session.get(User.class, user.getId());

// Assign updated values to this user
        existingUser.setName(user.getName());
        existingUser.setAge(user.getAge());
        existingUser.setisAdmin(user.getisAdmin());

// Save updates
        session.save(existingUser);
        logger.info("User" + user +
                " update");
    }

    @Override
    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, id);
        if(user!=null){
            session.delete(user);
        }
        logger.info("User" + user +
                " removed");
    }

    @Override
    public User getUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, id);
        logger.info("User" + user +
                " recievd");
        return user;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<User> listUsers() {
        Session session = this.sessionFactory.getCurrentSession();
        List<User> users = session.createQuery("from User").list();

        for(User user : users){
            logger.info("User list " + users);
        }
        return users;
    }
}