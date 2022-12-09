package com.example.drive;

import java.util.List;

public interface TaxiService {
    public int insertDrive(TaxiVO vo);
    public int deleteDrive(int seq);
    public int updateDrive(TaxiVO vo);
    public TaxiVO getDrive(int seq);
    public List<TaxiVO> getDriveList();
}
