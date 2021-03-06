package ru.tsystems.mis.spring.dao.implementations;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import ru.tsystems.mis.spring.dao.interfaces.OptionDAO;
import ru.tsystems.mis.spring.model.Option;

import java.io.Serializable;
import java.util.List;

@EnableTransactionManagement
@Repository
public class OptionDAOImpl implements OptionDAO {

    private static final Logger logger = LoggerFactory.getLogger(OptionDAOImpl.class);

    @Autowired
    SessionFactory factory;

    @Transactional
    @Override
    public void addOption(Option option) {
        Session session = factory.openSession();
        session.save(option);
        session.flush();
        logger.info("Option successfully saved. Option details: " + option);
        session.close();
    }

    @Transactional
    @Override
    public void updateOption(Option option) {
        Session session = factory.openSession();
        session.update(option);
        session.flush();
        logger.info("Option successfully update. Option details: " + option);
        session.close();
    }


    @Transactional
    @Override
    public void deleteOption(Long id) {
        Session session = factory.openSession();
        Option option = (Option) session.get(Option.class, new Long(id));
        if(option != null){
            session.delete(option);
            session.flush();
            logger.info("Option successfully delete. Option details: " + option);
        } else {
            logger.info("Couldn't delete option " + option);
        }
        session.close();

    }

    @Transactional
    @Override
    public Option getOptionById(Long id) {
        Session session = factory.openSession();
        Option option = (Option) session.get(Option.class, id);
//        session.flush();
        logger.info("Option successfully loaded. Option details: " + option);
        session.close();
        return option;
    }

    @Transactional
    @Override
    @SuppressWarnings("unchecked")
    public List<Option> listOptions() {
        Session session = factory.openSession();
        List<Option> list = session.createQuery("from Option").list();
        session.flush();
        for (Option option : list) {
            logger.info("Option list: " + option);
        }
        session.close();
        return list;
    }
}
