package com.pts.DAO;

import com.pts.entity.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface QuizDAO extends JpaRepository<Quiz,Integer> {
    @Query("select p from Quiz p where p.Content.tps_id =?1")
    Quiz layquiz(int id);



}
