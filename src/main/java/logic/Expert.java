package logic;

import java.util.LinkedList;
import java.util.List;

public class Expert {
    public Expert() {

    }

    private List <String> inventory = new LinkedList();

    public List getInventory() {
        return inventory;
    }

    public void setInventory(String beer) {
       this.inventory.add(beer);
    }

    public String myResponse()
    {
        String beer = inventory.get(0);
       return beer;
    }
}
