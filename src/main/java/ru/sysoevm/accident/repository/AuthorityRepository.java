package ru.sysoevm.accident.repository;

import org.springframework.data.repository.CrudRepository;
import ru.sysoevm.accident.model.Authority;

public interface AuthorityRepository extends CrudRepository<Authority, Integer> {
    Authority findByAuthority(String authority);
}
