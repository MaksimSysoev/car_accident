package ru.sysoevm.accident.repository;

import org.springframework.data.repository.CrudRepository;
import ru.sysoevm.accident.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {
}
