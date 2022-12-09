package com.example.drive;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class TaxiServiceImpl implements TaxiService{
    @Autowired
    TaxiDAO taxiDAO;

    @Override
    public int insertDrive(TaxiVO vo) {
        return taxiDAO.insertDrive(vo);
    }
    @Override
    public int deleteDrive(int seq) {
        return taxiDAO.deleteDrive(seq);
    }
    @Override
    public int updateDrive(TaxiVO vo) {
        return taxiDAO.updateDrive(vo);
    }
    @Override
    public TaxiVO getDrive(int seq) {
        return taxiDAO.getDrive(seq);
    }
    @Override
    public List<TaxiVO> getDriveList() {
        return taxiDAO.getDriveList();
    }
}
