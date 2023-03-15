package com.pts.DAO;

import com.pts.entity.Chapter;
import com.pts.entity.Content;
import com.pts.entity.Course;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import java.util.List;
import java.util.Optional;

public interface ContentDAO extends JpaRepository<Content,Integer> {
    @Query("select p from Content p WHERE p.chapter.course.tps_id =?1")
    List<Content>findId(int id);
    @Query("select p from Content p where p.tps_id=?1 ")
    Content connn(int id);
    @Query("SELECT c FROM Content c WHERE c.chapter.course.tps_id = ?1 AND c.tps_id > ?2 ORDER BY c.tps_id ASC")
    List<Content> getNextContent(int courseId, int currentContentId, Pageable pageable);







}
