package com.bin.temperature.service.impl;

import com.bin.temperature.bean.Admin;
import com.bin.temperature.mapper.AdminMapper;
import com.bin.temperature.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin validateAdmin(Admin admin) {
        return adminMapper.validateAdmin(admin);
    }
}
