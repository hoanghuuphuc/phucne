package com.pts.DAO;

import com.pts.entity.Payment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface PaymentRepository extends JpaRepository<Payment,Integer> {
//    public Payment getByTxnref(String txnRef);
    @Query("select p from Payment p where p.txnref=?1")
    Payment timma(String txnref);
}
