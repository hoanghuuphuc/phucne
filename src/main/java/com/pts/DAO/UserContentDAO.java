package com.pts.DAO;

import com.pts.entity.Account;
import com.pts.entity.Content;
import com.pts.entity.UserContent;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UserContentDAO extends JpaRepository<UserContent,Integer> {
    @Query("select p from UserContent p where p.account.tps_Username =?1")
    List<UserContent>kiemtracontent(String username);
    @Query("select p from UserContent p where p.account.tps_Username =?1 and p.content.tps_id =?2")
    List<UserContent> kiemtracontentTaiKhoan(String username,int tps_id);

    @Query("select p from UserContent p where p.account.tps_Username =?1 and p.content.tps_id =?2")
    UserContent addtime(String username,int tps_id);
    @Query("SELECT p FROM UserContent p WHERE p.account.tps_Username = ?1 AND  p.course.tps_id =?2")
    List<UserContent> layvideodanghoc(String username, int tps_id);


    @Query("select p from UserContent p where p.account.tps_Username =?1 and p.content.tps_id =?2 and p.course.tps_id =?3")
    UserContent kiemtranguoidung(String username, int content, int course );

    @Query("select p from UserContent p where p.account.tps_Username =?1 and p.content.tps_id =?2 and p.course.tps_id =?3")
    UserContent findNextContent(String username, int content, int course );

}
