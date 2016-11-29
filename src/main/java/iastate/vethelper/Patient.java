package iastate.vethelper;

/**
 * Created by Thomas Kearney on 11/27/2016.
 */
public class Patient
{
    private String ownerName;
    private String name;


    private String MMR;

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


}
