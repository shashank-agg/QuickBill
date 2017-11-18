package quickbill;
 
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface ShopRepository extends CrudRepository<Employee, Long> {
 
}