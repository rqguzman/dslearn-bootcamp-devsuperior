package com.devsuperior.dslearn.repositories;

import com.devsuperior.dslearn.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {


    User findByEmail(String email);
}
