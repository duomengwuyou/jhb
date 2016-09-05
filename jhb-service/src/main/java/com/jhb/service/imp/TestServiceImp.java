package com.jhb.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhb.dao.TestMapper;
import com.jhb.service.TestService;

@Service
public class TestServiceImp implements TestService {

    @Autowired
    private TestMapper testMapper;
}
