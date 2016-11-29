package iastate.vethelper.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Patient
{
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
    private String ownerName;
    private String name;
    private String MMR;

    public Patient(){}

    public String getOwnerName() {
        return ownerName;
    }

    public void setOwnerName(String ownerName) {
        this.ownerName = ownerName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMMR() {
        return MMR;
    }

    public void setMMR(String MMR) {
        this.MMR = MMR;
    }

    @Override
    public String toString() {
        return "Patient{" +
                "id=" + id +
                ", ownerName='" + ownerName + '\'' +
                ", name='" + name + '\'' +
                ", MMR='" + MMR + '\'' +
                '}';
    }
}
