package login.dao;

import java.util.List;

public interface DAO <T,K> {

    void create(T t);    

    List<T> findAll();
    
    T findOne(K k);

    void update(T t);

    void delete(K k);

}