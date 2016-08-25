package net.proselyte.usermanager.people;

import javax.persistence.*;

import java.sql.Timestamp;
import java.util.Date;


@Entity
@Table(name ="users")
public class User {
@Id
@Column(name = "ID")
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;

@Column(name = "name")

private String name;

    @Column(name = "age")
    private int age;

    @Column(name = "isAdmin")
    private boolean isAdmin = false;

    @Column(name = "createdDate")
    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date createdDate;



    public boolean getisAdmin() {
        return isAdmin;
    }

    public void setisAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }



    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", isAdmin=" + isAdmin +
                ", createdDate=" + createdDate +
                '}';
    }

}
