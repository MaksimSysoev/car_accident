package ru.sysoevm.accident.repository;

import org.springframework.data.repository.CrudRepository;
import ru.sysoevm.accident.model.Accident;

public interface AccidentRepository extends CrudRepository<Accident, Integer> {
}
