package com.example.drive;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TaxiDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertDrive(TaxiVO vo) {
        int result = sqlSession.insert("Taxi.insertDrive",vo);
        return result;
    }

    public int deleteDrive(int id) {
        int result2 = sqlSession.delete("Taxi.deleteDrive",id);
        return result2;
    }

    public int updateDrive(TaxiVO vo) {
        int two = sqlSession.update("Taxi.updateDrive",vo);
        return two;
    }
    public TaxiVO getDrive(int id) {
        TaxiVO one = sqlSession.selectOne("Taxi.getDrive", id);
        return one;
    }

    public List<TaxiVO> getDriveList() {
        List<TaxiVO> list = sqlSession.selectList("Taxi.getDriveList");
        return list;
    }
}
