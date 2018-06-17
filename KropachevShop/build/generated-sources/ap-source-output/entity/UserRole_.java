package entity;

import entity.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-06-17T16:50:27")
@StaticMetamodel(UserRole.class)
public class UserRole_ { 

    public static volatile SingularAttribute<UserRole, String> role;
    public static volatile SingularAttribute<UserRole, Boolean> active;
    public static volatile SingularAttribute<UserRole, Long> id;
    public static volatile SingularAttribute<UserRole, User> user;

}