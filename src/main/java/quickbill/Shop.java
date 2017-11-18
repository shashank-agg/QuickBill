package quickbill;
 
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Data
@Entity
public class Shop {

    @Id
    @GeneratedValue
    private Long shop_id;
    private String shop_name;

    private Shop() {}

    public Shop(String shop_name) {
        this.shop_name = shop_name;
    }
}